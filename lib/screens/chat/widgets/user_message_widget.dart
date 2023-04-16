part of '../screens/chat_loaded_screen.dart';

class _UserMessageWidget extends StatelessWidget {
  const _UserMessageWidget({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 88.0,
      ),
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Color(0xFF10A37F),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
        ),
      ),
      child: Text(
        '$message ',
        style: ChatGptTextStyles.textStyle4,
      ),
    );
  }
}