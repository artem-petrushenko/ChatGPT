import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/contacts/contacts_bloc.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ContactsBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          success: (contacts, hasReachedMax) => CustomScrollView(
            slivers: [
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
                    titleTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                    subtitleTextStyle: TextStyle(
                      color: Colors.black.withOpacity(0.69),
                      fontSize: 13,
                      fontFamily: 'Poppins',
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
