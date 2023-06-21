import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/chat_observer.dart';

import 'package:chat_gpt/presentation/views/app/my_app.dart';

Future<void> main() async{
  Bloc.observer = const ChatObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
