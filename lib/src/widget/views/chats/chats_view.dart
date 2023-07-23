import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_gpt/src/bloc/bloc/chats/chats_bloc.dart';

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
            .add(const ChatsEvent.createChat(name: 'New Chat')),
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: state.when(
            loading: () => const CircularProgressIndicator(),
            success: (chats, hasReachedMax) => CustomScrollView(
                  slivers: [
                    SliverList.builder(
                      itemCount: chats.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index >= chats.length - 1) {
                          context.read<ChatsBloc>().add(ChatsEvent.fetchChats(
                              id: chats[index].conversationId));
                        }
                        return Dismissible(
                          key: Key(chats[index].conversationId),
                          onDismissed: (direction) =>
                              context.read<ChatsBloc>().add(
                                    ChatsEvent.removeChat(
                                        id: chats[index].conversationId),
                                  ),
                          child: ListTile(
                            onTap: () {
                              context.pushNamed(
                                'chat',
                                queryParameters: {
                                  'id': chats[index].conversationId
                                },
                              );
                            },
                            title: Text(chats[index].name),
                            subtitle: Text(DateTime.fromMillisecondsSinceEpoch(
                                    chats[index].createdAt)
                                .toString()),
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
            failure: (error) => const Text('Failure')),
      ),
    );
  }
}
