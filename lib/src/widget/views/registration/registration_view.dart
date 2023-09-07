import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/auth/auth_bloc.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

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
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Join Us',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Create your account',
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
              const SizedBox(height: 16.0),
              const Wrap(
                spacing: 8.0,
                children: [
                  ChipRule(
                    isComplete: false,
                    label: '1+ number',
                  ),
                  ChipRule(
                    isComplete: false,
                    label: '1+ upper case letter',
                  ),
                  ChipRule(
                    isComplete: true,
                    label: '1+ lower case letter',
                  ),
                  ChipRule(
                    isComplete: true,
                    label: '8+ characters',
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              GestureDetector(
                onTap: () {
                  HapticFeedback.vibrate();
                  context.read<AuthBloc>().add(
                    AuthEvent.signUpWithEmailAndPassword(
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
                    'Registration',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  HapticFeedback.vibrate();
                  context.pushNamed('signIn');
                },
                child: const Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Log In',
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
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      HapticFeedback.vibrate();
                    },
                    child: const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By signing up, you agree to\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Teams of Service & Privacy Policy',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChipRule extends StatelessWidget {
  final bool isComplete;
  final String label;

  const ChipRule({
    super.key,
    required this.isComplete,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(
        isComplete ? Icons.check_circle_outline : Icons.circle_outlined,
        color: const Color(0xFF787979),
      ),
      label: Text(label),
      labelStyle: const TextStyle(
        color: Color(0xFF787979),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      side: const BorderSide(style: BorderStyle.none),
      shape: const StadiumBorder(),
    );
  }
}
