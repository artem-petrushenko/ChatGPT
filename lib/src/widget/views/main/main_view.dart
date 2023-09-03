import 'package:chat_gpt/src/widget/views/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
        color: const Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomNavigationItem(
              icon: 'assets/vector/home.svg',
              selectIcon: 'assets/vector/home-select.svg',
              index: 0,
              selectIndex: selectIndex,
              path: '/contacts',
            ),
            const SizedBox(width: 32.0),
            BottomNavigationItem(
              icon: 'assets/vector/message.svg',
              selectIcon: 'assets/vector/message-select.svg',
              index: 1,
              selectIndex: selectIndex,
              path: '/conversations',
            ),
            const SizedBox(width: 32.0),
            BottomNavigationItem(
              icon: 'assets/vector/smile.svg',
              selectIcon: 'assets/vector/smile-select.svg',
              index: 2,
              selectIndex: selectIndex,
              path: '/profile',
            ),
            const SizedBox(width: 32.0),
            BottomNavigationItem(
              icon: 'assets/vector/compass.svg',
              selectIcon: 'assets/vector/compass-select.svg',
              index: 3,
              selectIndex: selectIndex,
              path: '/contacts',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String icon, selectIcon, path;
  final int index, selectIndex;

  const BottomNavigationItem({
    super.key,
    required this.path,
    required this.icon,
    required this.selectIcon,
    required this.index,
    required this.selectIndex,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          HapticFeedback.vibrate();
          context.read<MainViewModel>().setSelectIndex = index;
          context.go(path);
        },
        child: SvgPicture.asset(index != selectIndex ? icon : selectIcon),
      );
}
