import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_gpt/src/bloc/bloc/conversations/conversations_bloc.dart';
import 'package:intl/intl.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ConversationsBloc>().state;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Messages'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => context
            .read<ConversationsBloc>()
            .add(const ConversationsEvent.createConversation(name: 'New Chat')),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0),
          decoration: const ShapeDecoration(
            color: Color(0xFF0D0A07),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          child: const Text(
            'Created',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
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
                            // isThreeLine: true,
                            title: const Text(
                              // 'chats[index].name',
                              'William Glen Harold Herrington',
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
