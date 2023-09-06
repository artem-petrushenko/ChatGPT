import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/auth/auth_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.toString())),
            ),
          );
        },
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Welcome to Chat',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Sign In to Continue \nIt takes less than a minute',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  TextField(
                    controller: emailController,
                    cursorColor: const Color(0xFF000000),
                    cursorWidth: 2.0,
                    cursorRadius: const Radius.circular(0.0),
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  TextField(
                    controller: passwordController,
                    cursorColor: const Color(0xFF000000),
                    cursorWidth: 2.0,
                    cursorRadius: const Radius.circular(0.0),
                    obscureText: true,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          HapticFeedback.vibrate();
                        },
                        child: const Icon(
                          true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.0),
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
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 12.0),
                      decoration: const ShapeDecoration(
                        color: Color(0xFF0D0A07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          side: BorderSide(
                            color: Color(0xFF000000),
                            width: 2.0,
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
                  const SizedBox(height: 16.0),
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.vibrate();
                      context.pushNamed('registration');
                    },
                    child: const Center(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don\'t have an account? ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Register',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.vibrate();
                      //TODO
                    },
                    child: const Center(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.15,
              maxChildSize: 0.5,
              minChildSize: 0.15,
              builder:
                  (BuildContext context, ScrollController scrollController) =>
                      Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15.0),
                  ),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color(0xFF000000),
                      width: 2.0,
                    ),
                  ),
                ),
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverList.list(
                      children: [
                        Center(
                          child: Container(
                            width: 48.0,
                            height: 12.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE9A322),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: Color(0xFF000000),
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
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
                              color: Color(0xFFFFFFFF),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color(0xFF000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/vector/google.svg',
                                  width: 24,
                                  height: 24.0,
                                ),
                                const SizedBox(width: 8.0),
                                const Text(
                                  'Sign In with Google',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
