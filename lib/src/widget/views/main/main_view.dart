import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/widget/views/main/main_view_model.dart';

class MainView extends StatelessWidget {
  final Widget child;

  const MainView(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int selectIndex =
        context.select((MainViewModel model) => model.selectIndex);
    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        height: 80.0,
        color: Theme.of(context).colorScheme.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomNavigationItem(
              lightIcon: 'assets/vector/light/home.svg',
              lightSelectIcon: 'assets/vector/light/home-select.svg',
              darkIcon: 'assets/vector/dark/home.svg',
              darkSelectIcon: 'assets/vector/dark/home-select.svg',
              index: 0,
              selectIndex: selectIndex,
              path: '/contacts',
            ),
            const SizedBox(width: 32.0),
            BottomNavigationItem(
              lightIcon: 'assets/vector/light/message.svg',
              lightSelectIcon: 'assets/vector/light/message-select.svg',
              darkIcon: 'assets/vector/dark/message.svg',
              darkSelectIcon: 'assets/vector/dark/message-select.svg',
              index: 1,
              selectIndex: selectIndex,
              path: '/conversations',
            ),
            const SizedBox(width: 32.0),
            BottomNavigationItem(
              lightIcon: 'assets/vector/light/smile.svg',
              lightSelectIcon: 'assets/vector/light/smile-select.svg',
              darkIcon: 'assets/vector/dark/smile.svg',
              darkSelectIcon: 'assets/vector/dark/smile-select.svg',
              index: 2,
              selectIndex: selectIndex,
              path: '/profile',
            ),
            const SizedBox(width: 32.0),
            BottomNavigationItem(
              lightIcon: 'assets/vector/light/compass.svg',
              lightSelectIcon: 'assets/vector/light/compass-select.svg',
              darkIcon: 'assets/vector/dark/compass.svg',
              darkSelectIcon: 'assets/vector/dark/compass-select.svg',
              index: 3,
              selectIndex: selectIndex,
              path: '/settings',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String lightIcon, lightSelectIcon, darkIcon, darkSelectIcon, path;
  final int index, selectIndex;

  const BottomNavigationItem({
    Key? key,
    required this.lightIcon,
    required this.lightSelectIcon,
    required this.darkIcon,
    required this.darkSelectIcon,
    required this.index,
    required this.selectIndex,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    final bool isSelected = index == selectIndex;

    return GestureDetector(
      onTap: () {
        HapticFeedback.vibrate();
        if (selectIndex != index) {
          context.read<MainViewModel>().setSelectIndex = index;
          context.go(path);
        }
        return;
      },
      behavior: HitTestBehavior.translucent,
      child: SizedBox.square(
        dimension: 40.0,
        child: SvgPicture.asset(
          isLightTheme
              ? (isSelected ? lightSelectIcon : lightIcon)
              : (isSelected ? darkSelectIcon : darkIcon),
          width: 16.0,
          height: 16.0,
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
