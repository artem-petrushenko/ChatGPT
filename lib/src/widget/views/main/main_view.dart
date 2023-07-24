import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_gpt/src/bloc/bloc/main/main_bloc.dart';

class MainView extends StatelessWidget {
  final Widget child;

  const MainView(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MainBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Chats'),
            state.when(
              loading: () => const CircularProgressIndicator(),
              success: (user) => GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => BlocProvider<MainBloc>.value(
                    value: context.read<MainBloc>(),
                    child: Dialog(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => context.pop(),
                                  icon: const Icon(Icons.close_rounded),
                                ),
                                const Text('ChatGPT'),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(24.0)),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 16.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(user.photoUrl),
                                  ),
                                  const SizedBox(width: 16.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          user.username,
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                            softWrap: false,
                                        ),
                                        Text(
                                          user.email,
                                          maxLines: 1,
                                          overflow: TextOverflow.fade,
                                          softWrap: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              dense: true,
                              onTap: () => log('Settings'),
                              leading: const Icon(Icons.settings_rounded),
                              title: const Text('App Settings'),
                            ),
                            ListTile(
                              dense: true,
                              onTap: () => log('Account'),
                              leading:
                                  const Icon(Icons.manage_accounts_outlined),
                              title: const Text('Manage Account'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(user.photoUrl),
                ),
              ),
              failure: (error) => const Text('Failure'),
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
