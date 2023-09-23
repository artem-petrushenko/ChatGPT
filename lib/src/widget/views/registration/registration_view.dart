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
               Text(
                'Join Us',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
               Text(
                'Create your account',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 32.0),
              TextField(
                controller: emailController,
                cursorColor: Theme.of(context).colorScheme.onBackground,
                cursorWidth: 2.0,
                cursorRadius: const Radius.circular(0.0),
                style:  TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 32.0),
              TextField(
                controller: passwordController,
                cursorColor: Theme.of(context).colorScheme.onBackground,
                cursorWidth: 2.0,
                cursorRadius: const Radius.circular(0.0),
                style:  TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onBackground,
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
                  decoration:  ShapeDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.onBackground,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child:  Text(
                    'Registration',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
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
                child:  Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onBackground,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Log In',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onBackground,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Theme.of(context).colorScheme.onBackground,
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
                    child:  Text.rich(
                      TextSpan(
                        children: [
                           TextSpan(
                            text: 'By signing up, you agree to\n',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Teams of Service & Privacy Policy',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onBackground,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              decorationColor: Theme.of(context).colorScheme.onBackground,
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
        color: Theme.of(context).colorScheme.onBackground,
      ),
      label: Text(label),
    );
  }
}
