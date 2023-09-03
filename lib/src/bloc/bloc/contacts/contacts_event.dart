part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.fetchContacts({required String id}) = _FetchContacts;
}
