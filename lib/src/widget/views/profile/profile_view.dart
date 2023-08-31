import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: () async => await FirebaseAuth.instance.signOut(),
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: state.when(
            loading: () => const CircularProgressIndicator(),
            success: (user) => Column(
                  children: [
                    const SizedBox(height: 64.0),
                    SizedBox(
                      width: 209.69,
                      height: 227.84,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0.31,
                            top: 28.32,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(-0.16),
                              child: Container(
                                width: 180,
                                height: 202,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF0D0A07),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 185,
                              height: 213,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(user.photoUrl),
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      user.username,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          user.uid.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        SvgPicture.asset(
                          'assets/vector/share.svg',
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                    GestureDetector(
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
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
            failure: (error) => const Text('Failure')),
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
      title: Expanded(
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: Expanded(
        child: Row(
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
