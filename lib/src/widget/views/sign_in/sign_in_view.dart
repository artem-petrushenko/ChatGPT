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
                  Text(
                    'Welcome to Wave',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Sign In to Continue \nIt takes less than a minute',
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
                    style: TextStyle(
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
                    style: TextStyle(
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
                      decoration: ShapeDecoration(
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
                      child: Text(
                        'Sign In',
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
                      context.pushNamed('registration');
                    },
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don\'t have an account? ',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Register',
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
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
                    child: Center(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () => showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (_) {
                            final bloc = context.watch<AuthBloc>();
                            return BlocProvider.value(
                              value: bloc,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 16.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          HapticFeedback.vibrate();
                                          context.read<AuthBloc>().add(
                                              const AuthEvent
                                                  .signInWithGoogle());
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 35.0, vertical: 12.0),
                                          decoration: ShapeDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onBackground,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(15.0),
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/vector/google.svg',
                                                width: 24,
                                                height: 24.0,
                                              ),
                                              const SizedBox(width: 8.0),
                                              Text(
                                                'Sign In with Google',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onBackground,
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
                                ),
                              ),
                            );
                          },
                        ),
                        child: Text(
                          'Other Authorization Methods',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
