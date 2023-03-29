import 'package:flutter/material.dart';

class ChatLoadingScreen extends StatelessWidget {
  const ChatLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
