part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.fetchContacts({
    required final String id,
  }) = _FetchContacts;

  const factory ContactsEvent.addContact({
    required final String uid,
  }) = _AddContact;

  const factory ContactsEvent.removeContacts({
    required final List<String> uid,
  }) = _RemoveContacts;
}
