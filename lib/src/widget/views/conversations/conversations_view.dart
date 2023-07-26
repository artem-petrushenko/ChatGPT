import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_gpt/src/bloc/bloc/conversations/conversations_bloc.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ConversationsBloc>().state;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context
            .read<ConversationsBloc>()
            .add(const ConversationsEvent.createConversation(name: 'New Chat')),
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
                          context.read<ConversationsBloc>().add(
                              ConversationsEvent.fetchConversations(
                                  id: chats[index].conversationId));
                        }
                        return Dismissible(
                          key: Key(chats[index].conversationId),
                          onDismissed: (direction) =>
                              context.read<ConversationsBloc>().add(
                                    ConversationsEvent.removeConversation(
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
