import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/conversations/conversations_bloc.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ConversationsBloc>().state;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Messages'),
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
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            leading: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://i1.sndcdn.com/avatars-000411292317-dt2f28-t500x500.jpg'),
                            ),
                            onTap: () {
                              context.pushNamed(
                                'chat',
                                queryParameters: {
                                  'id': chats[index].conversationId
                                },
                              );
                            },
                            visualDensity:
                                VisualDensity.adaptivePlatformDensity,
                            title: Text(
                              chats[index].name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                            ),
                            subtitle: const Text(
                              'Lets Celebrate and Suck Some Dick. Oh shit im sorry',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                            ),
                            trailing: Text(DateFormat()
                                .add_jm()
                                .format(DateTime.fromMillisecondsSinceEpoch(
                                    chats[index].createdAt))
                                .toString()),
                            titleTextStyle: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w700,
                            ),
                            subtitleTextStyle: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.69),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
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
