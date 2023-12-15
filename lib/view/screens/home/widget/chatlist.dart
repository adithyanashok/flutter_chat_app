import 'package:chat_app/view/screens/chat/chat_screen.dart';
import 'package:chat_app/view/util/colors.dart';
import 'package:chat_app/view/util/info.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        final chat = info[index];
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MobileChatScreen(
                        name: "${chat['name']}",
                        profilePic: "${chat['profilePic']}",
                      ),
                    ),
                  );
                },
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    '${chat['profilePic']}',
                  ),
                ),
                title: Text(
                  "${chat['name']}",
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "${chat['message']}",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: Text(
                  '${chat['time']}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Divider(color: dividerColor, indent: 85),
          ],
        );
      },
    );
  }
}
