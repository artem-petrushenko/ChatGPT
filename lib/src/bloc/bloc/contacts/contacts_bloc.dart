import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/model/user/user_model.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

part 'contacts_event.dart';

part 'contacts_state.dart';

part 'contacts_bloc.freezed.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  final UserRepository _userRepository;

  ContactsBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const ContactsState.loading()) {
    on<ContactsEvent>(
      (event, emit) async {
        if (event is _FetchContacts) {
          await _onFetchContacts(event, emit);
        } else if (event is _AddContact) {
          await _onAddContacts(event, emit);
        } else if (event is _RemoveContacts) {
          await _onRemoveContacts(event, emit);
        }
      },
      transformer: sequential(),
    );
  }

  Future<void> _onFetchContacts(
    _FetchContacts event,
    Emitter<ContactsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      final user = await _userRepository.getUser(uid: uid);
      final contacts = List<String>.from(user.contacts);

      List<String> limitContacts = event.id != ''
          ? contacts.sublist(contacts.indexOf(event.id) + 1)
          : contacts;
      limitContacts = limitContacts.take(10).toList();

      final contactsDoc = await Future.wait(limitContacts
          .map((uid) async => await _userRepository.getUser(uid: uid)));
      if (state is _ContactsSuccessState) {
        if ((state as _ContactsSuccessState).hasReachedMax) return;
        emit(contactsDoc.isEmpty
            ? (state as _ContactsSuccessState).copyWith(hasReachedMax: true)
            : (state as _ContactsSuccessState).copyWith(
                hasReachedMax: false,
                contacts:
                    (state as _ContactsSuccessState).contacts + contactsDoc));
      } else {
        final newState = contactsDoc.isEmpty
            ? const _ContactsEmptyState()
            : _ContactsSuccessState(
                contacts: contactsDoc,
                hasReachedMax: false,
              );
        emit(newState);
      }
    } catch (error) {
      emit(_ContactsFailureState(error: error));
    }
  }

  Future<void> _onAddContacts(
    _AddContact event,
    Emitter<ContactsState> emit,
  ) async {
    try {
      final currentUID = _userRepository.getCurrentUID();
      await _userRepository.addNewContact(
          uid: event.uid, currentUID: currentUID);
    } catch (error) {
      emit(_ContactsFailureState(error: error));
    }
  }

  Future<void> _onRemoveContacts(
    _RemoveContacts event,
    Emitter<ContactsState> emit,
  ) async {
    try {
      final currentUID = _userRepository.getCurrentUID();
      await _userRepository.removeContacts(
          uid: event.uid, currentUID: currentUID);
      List<UserModel> contacts =
          List.from((state as _ContactsSuccessState).contacts);
      contacts.removeWhere((element) => (event.uid).contains(element.uid));
      contacts.isEmpty
          ? emit((state as _ContactsSuccessState).copyWith(contacts: contacts))
          : emit(const _ContactsEmptyState());
    } catch (error) {
      emit(_ContactsFailureState(error: error));
    }
  }
}
