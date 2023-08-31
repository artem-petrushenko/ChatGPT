import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/auth/auth_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Authentication'),
      //   bottom: PreferredSize(
      //     preferredSize: const Size.fromHeight(2.0),
      //     child: Container(
      //       color: const Color(0xFF000000),
      //       width: double.infinity,
      //       height: 2.0,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Appname'),
            const Text('Sign In to Continue'),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(text: 'Create an account\n'),
                  TextSpan(text: 'It takes less than a minute.')
                ],
              ),
            ),
            const Text('Username'),
            const SizedBox(height: 8.0),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                enabledBorder: UnderlineInputBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(
                    color: Color(0xFF000000),
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Password'),
            const SizedBox(height: 8.0),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                enabledBorder: UnderlineInputBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(
                    color: Color(0xFF000000),
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                HapticFeedback.vibrate();
                context.read<AuthBloc>().add(
                      AuthEvent.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 35.0, vertical: 12.0),
                decoration: const ShapeDecoration(
                  color: Color(0xFF0D0A07),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Sign In',
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
            GestureDetector(
              onTap: () {
                HapticFeedback.vibrate();
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.signInWithGoogle());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 35.0, vertical: 12.0),
                decoration: const ShapeDecoration(
                  color: Color(0xFF0D0A07),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
