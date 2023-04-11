import 'package:flutter/material.dart';

class ChatErrorScreen extends StatelessWidget {
  const ChatErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bolt_outlined,
              color: Theme.of(context).colorScheme.error,
              size: 72.0,
            ),
            const SizedBox(height: 32.0),
            Text(
              'Sorry, an unexpected error occurred',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4.0,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            TextButton(onPressed: () {}, child: const Text('Try Again'))
          ],
        ),
      ),
    );
  }
}
