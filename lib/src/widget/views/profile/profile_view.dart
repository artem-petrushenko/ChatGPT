import 'package:chat_gpt/src/bloc/bloc/profile/profile_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfileBloc>().state;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Center(
        child: state.when(
            loading: () => const CircularProgressIndicator(),
            success: (user) => Column(
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
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
                        context: context,
                        builder: (BuildContext context) {
                          return ListView(
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 24.0, bottom: 12.0),
                                child: SvgPicture.asset('assets/vector/chevronup.svg'),
                              ),
                              ListTile(
                                leading: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFE9B85E),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                title: const Text('Phone number'),
                                subtitle: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/vector/phone.svg',
                                      height: 15.0,
                                      width: 15.0,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text(user.phoneNumber),
                                  ],
                                ),
                                titleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                                subtitleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                                visualDensity: VisualDensity.compact,
                              ),
                              ListTile(
                                leading: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFE9B85E),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                title: const Text('Phone number'),
                                subtitle: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/vector/phone.svg',
                                      height: 15.0,
                                      width: 15.0,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text(user.phoneNumber),
                                  ],
                                ),
                                titleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                                subtitleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                                visualDensity: VisualDensity.compact,
                              ),
                              ListTile(
                                leading: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFE9B85E),
                                    shape: OvalBorder(),
                                  ),
                                ),
                                title: const Text('Phone number'),
                                subtitle: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/vector/phone.svg',
                                      height: 15.0,
                                      width: 15.0,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text(user.phoneNumber),
                                  ],
                                ),
                                titleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                                subtitleTextStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                                visualDensity: VisualDensity.compact,
                              ),
                            ],
                          );
                        },
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
