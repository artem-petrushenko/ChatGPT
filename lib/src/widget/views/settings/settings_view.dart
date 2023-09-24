import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/widget/l10n/generated/l10n.dart';

import 'package:chat_gpt/src/bloc/bloc/theme/theme_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/locale/locale_bloc.dart';

const List<ThemeEntity> themes = <ThemeEntity>[
  ThemeEntity(name: 'System', index: 0),
  ThemeEntity(name: 'Light', index: 1),
  ThemeEntity(name: 'Dark', index: 2),
];

const List<LocaleEntity> locales = <LocaleEntity>[
  LocaleEntity(name: 'English', enName: 'English', locale: 'en'),
  LocaleEntity(name: 'Русский', enName: 'Russian', locale: 'ru'),
  LocaleEntity(name: 'Deutsch', enName: 'German', locale: 'de'),
  LocaleEntity(name: 'العربي', enName: 'Arabic', locale: 'ar'),
];

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeIndex =
        context.select((ThemeBloc bloc) => bloc.state.themeIndex);
    final locale = context.select((LocaleBloc bloc) => bloc.state.locale);
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.of(context).settings),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Text('Theme'),
          ),
          SliverList.builder(
            itemCount: themes.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text(themes[index].name),
                trailing: themeIndex == index
                    ? Icon(Icons.check,
                        color: Theme.of(context).colorScheme.primary)
                    : null,
                onTap: () {
                  HapticFeedback.vibrate();
                  context.read<ThemeBloc>().add(
                      ThemeEvent.changeTheme(themeIndex: themes[index].index));
                }),
          ),
          const SliverToBoxAdapter(
            child: Text('Locale'),
          ),
          SliverList.builder(
            itemCount: locales.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
                title: Text(locales[index].name),
                subtitle: Text(locales[index].enName),
                trailing: locale == locales[index].locale
                    ? Icon(Icons.check,
                        color: Theme.of(context).colorScheme.primary)
                    : null,
                onTap: () {
                  HapticFeedback.vibrate();
                  context.read<LocaleBloc>().add(
                      LocaleEvent.changeLocale(locale: locales[index].locale));
                }),
          ),
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

class LocaleEntity {
  final String name;
  final String enName;
  final String locale;

  const LocaleEntity({
    required this.name,
    required this.enName,
    required this.locale,
  });
}
