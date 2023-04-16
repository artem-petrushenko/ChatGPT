part of '../screens/chat_loaded_screen.dart';

class _ChatMessageWidget extends StatelessWidget {
  const _ChatMessageWidget({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 88.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Color(0x33FFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Text(
              '$message ',
              style: ChatGptTextStyles.textStyle4,
            ),
          ),
          const SizedBox(height: 14.0),
          GestureDetector(
            onTap: () =>
                context.read<ChatBloc>().add(CopyMessageEvent(message)),
            child: Row(
              children: const [
                Icon(
                  Icons.copy_sharp,
                  color: Color(0x52FFFFFF),
                  size: 12.0,
                ),
                SizedBox(width: 12.0),
                Text(
                  'Copy',
                  style: ChatGptTextStyles.textStyle3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
