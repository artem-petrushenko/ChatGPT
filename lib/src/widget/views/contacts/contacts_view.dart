import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/widget/l10n/generated/l10n.dart';

import 'package:chat_gpt/src/bloc/bloc/contacts/contacts_bloc.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ContactsBloc>().state;
    final idController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.of(context).contacts),
      ),
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          success: (contacts, hasReachedMax) => CustomScrollView(
            slivers: [
              SliverList.list(
                children: [
                  ListTile(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      elevation: 0.0,
                      showDragHandle: true,
                      builder: (_) {
                        final bloc = context.watch<ContactsBloc>();
                        return BlocProvider.value(
                          value: bloc,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'New Contact',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                TextField(
                                  controller: idController,
                                  decoration: const InputDecoration(
                                      hintText: 'User ID'),
                                ),
                                const SizedBox(height: 16.0),
                                GestureDetector(
                                  onTap: () {
                                    HapticFeedback.vibrate();
                                    bloc.add(ContactsEvent.addContact(
                                        uid: idController.text));
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 35.0, vertical: 12.0),
                                    decoration: ShapeDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        side: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onBackground,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Create Contact',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    dense: true,
                    leading: const Icon(Icons.contacts),
                    title: const Text('Add New Contact'),
                    titleTextStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.30),
                    ),
                    child: const Text(
                      'Your contacts',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SliverList.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index >= contacts.length - 1) {
                    context.read<ContactsBloc>().add(
                        ContactsEvent.fetchContacts(id: contacts[index].uid));
                  }
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(contacts[index].photoUrl),
                    ),
                    trailing: IconButton(
                        icon: const Icon(Icons.traffic_sharp),
                        onPressed: () => context.read<ContactsBloc>().add(
                            ContactsEvent.removeContacts(
                                uid: [contacts[index].uid]))),
                    title: Text(
                      contacts[index].username,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    subtitle: Text(
                      contacts[index].email,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    titleTextStyle: TextStyle(
                      fontSize: 19.0,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.w700,
                    ),
                    subtitleTextStyle: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.69),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
              ),
              if (hasReachedMax == false)
                const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            ],
          ),
          empty: () => const Text('Empty'),
          failure: (error) => const Text('Failure'),
        ),
      ),
    );
  }
}
