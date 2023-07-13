import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/blocs/blocs/auth/auth_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              context.read<AuthBloc>().add(const AuthEvent.googleSignIn()),
          child: const Text('Sign In'),
        ),
      ),
    );
  }
}
