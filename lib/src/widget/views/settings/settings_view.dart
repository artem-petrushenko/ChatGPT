import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/theme/theme_bloc.dart';

const List<ThemeEntity> themes = <ThemeEntity>[
  ThemeEntity(name: 'System', index: 0),
  ThemeEntity(name: 'Light', index: 1),
  ThemeEntity(name: 'Dark', index: 2),
];

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeIndex =
        context.select((ThemeBloc bloc) => bloc.state.themeIndex);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Text('Theme'),
          ),
          SliverList.builder(
            itemCount: themes.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
                dense: true,
                title: Text(themes[index].name),
                trailing:
                    themeIndex == index ? const Icon(Icons.task_alt) : null,
                onTap: () {
                  HapticFeedback.vibrate();
                  context.read<ThemeBloc>().add(
                      ThemeEvent.changeTheme(themeIndex: themes[index].index));
                }),
          )
        ],
      ),
    );
  }
}

class ThemeEntity {
  final String name;
  final int index;

  const ThemeEntity({required this.name, required this.index});
}
