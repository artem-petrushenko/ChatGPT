import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:chat_gpt/src/bloc/bloc/profile/profile_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfileBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          failure: (error) => const Text('Failure'),
          success: (user) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
              slivers: [
                SliverList.list(
                  children: [
                    Center(
                      child: SizedBox(
                        width: 192,
                        height: 192,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            AspectRatio(
                              aspectRatio: 1.0,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(48.0),
                                  ),
                                  child: Image.network(
                                    user.photoUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 16.0,
                              right: 0.0,
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF000000),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0.0, 4.0),
                                        blurRadius: 4.0,
                                        spreadRadius: 1.0,
                                        color: Color(0x12000000)),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        user.username,
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            user.uid.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/vector/share.svg',
                            width: 15,
                            height: 15,
                          ),
                        ],
                      ),
                      onTap: () => showModalBottomSheet(
                        elevation: 0,
                        context: context,
                        builder: (BuildContext context) => ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24.0, bottom: 12.0),
                              child: SvgPicture.asset(
                                  'assets/vector/chevronup.svg'),
                            ),
                            ListTileItem(
                              title: 'Phone number',
                              subtitle: user.phoneNumber,
                              icon: 'assets/vector/phone.svg',
                              color: const Color(0xFFE9B85E),
                            ),
                            ListTileItem(
                              title: 'Email address',
                              subtitle: user.email,
                              icon: 'assets/vector/mail.svg',
                              color: const Color(0xFFC4C4C4),
                            ),
                            ListTileItem(
                              title: 'User id',
                              subtitle: user.uid,
                              icon: 'assets/vector/key.svg',
                              color: const Color(0xFF0D0A07),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    ListTileItem(
                      title: 'Phone number',
                      subtitle: user.phoneNumber,
                      icon: 'assets/vector/phone.svg',
                      color: const Color(0xFFE9B85E),
                    ),
                    ListTileItem(
                      title: 'Email address',
                      subtitle: user.email,
                      icon: 'assets/vector/mail.svg',
                      color: const Color(0xFFC4C4C4),
                    ),
                    ListTileItem(
                      title: 'User id',
                      subtitle: user.uid,
                      icon: 'assets/vector/key.svg',
                      color: const Color(0xFF0D0A07),
                    ),
                    const SizedBox(height: 16.0),
                    GestureDetector(
                      onTap: () {
                        HapticFeedback.vibrate();
                        context
                            .read<ProfileBloc>()
                            .add(const ProfileEvent.signOut());
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35.0, vertical: 12.0),
                        decoration: const ShapeDecoration(
                          // color: Color(0xFF0D0A07),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            side: BorderSide(
                              color: Color(0xFFba1a1a),
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Sign Out',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFb3261e),
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  final String title, subtitle, icon;
  final Color color;

  const ListTileItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 15.0,
      minLeadingWidth: 30.0,
      leading: Container(
        width: 45.0,
        height: 45.0,
        decoration: ShapeDecoration(
          color: color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: 15.0,
            width: 15.0,
          ),
          const SizedBox(width: 8.0),
          Text(
            subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      titleTextStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 16.0,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),
      subtitleTextStyle: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 15.0,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
      ),
      visualDensity: VisualDensity.comfortable,
    );
  }
}
