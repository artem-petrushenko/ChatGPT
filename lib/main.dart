import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/chat_observer.dart';

import 'package:chat_gpt/presentation/views/app/my_app.dart';

void main() {
  Bloc.observer = const ChatObserver();
  runApp(const MyApp());
}
