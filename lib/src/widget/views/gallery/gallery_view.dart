import 'package:chat_gpt/src/bloc/bloc/gallery/gallery_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GalleryBloc>().state;
    return Scaffold(
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          success: (assets) => GridView.builder(
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                HapticFeedback.vibrate();
                context.pop(assets[index]);
              },
              child: Image.file(
                assets[index],
                fit: BoxFit.cover,
              ),
            ),
            itemCount: assets.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
          ),
          failure: (error) => Text(error.toString()),
          empty: () => const Text('Empty'),
        ),
      ),
    );
  }
}
