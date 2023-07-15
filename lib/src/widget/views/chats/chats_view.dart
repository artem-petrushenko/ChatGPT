import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:chat_gpt/src/blocs/blocs/chats_list/chats_bloc.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ChatsBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context
            .read<ChatsBloc>()
            .add(const ChatsEvent.createChat(name: 'nameController.text')),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: state.when(
            loading: () => const CircularProgressIndicator(),
            success: (chats, hasReachedMax) => CustomScrollView(slivers: [
                  SliverList.builder(
                      itemCount: chats.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index >= chats.length - 1) {
                          context.read<ChatsBloc>().add(
                              ChatsEvent.fetchChats(id: chats[index].id ?? ''));
                        }
                        return ListTile(
                          title: Text(chats[index].name ?? ''),
                          subtitle: Text(chats[index].id ?? ''),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () => context.read<ChatsBloc>().add(
                                  ChatsEvent.removeChat(
                                      id: chats[index].id ?? ''),
                                ),
                          ),
                        );
                      }),
                  if (hasReachedMax == false)
                    const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                ]),
            empty: () => const Text('Empty'),
            failure: (error) => const Text('Failure')),
      ),
    );
  }
}
