import 'package:chat_app/view/screens/chat/widgets/my_message_card.dart';
import 'package:chat_app/view/screens/chat/widgets/sender_message_card.dart';
import 'package:chat_app/view/util/info.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'assets/images/backgroundImage.png',
          height: size.height * 1,
          fit: BoxFit.cover,
          width: size.width,
        ),
        ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            if (messages[index]['isMe'] == true) {
              return MyMessageCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString(),
              );
            }
            return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString(),
            );
          },
        ),
      ],
    );
  }
}
