import 'package:chat_app/view/screens/chat/widgets/chats.dart';
import 'package:chat_app/view/util/colors.dart';
import 'package:flutter/material.dart';

class MobileChatScreen extends StatelessWidget {
  final String name;
  final String profilePic;
  const MobileChatScreen(
      {Key? key, required this.name, required this.profilePic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: appBarColor,
          title: Text(
            name,
          ),
          leadingWidth: 85,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(profilePic),
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatScreen(),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Type a message!',
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
