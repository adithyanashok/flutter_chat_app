import 'package:chat_app/view/screens/home/widget/chatlist.dart';
import 'package:chat_app/view/screens/updates/updates_screen.dart';
import 'package:chat_app/view/util/colors.dart';
import 'package:chat_app/view/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: textColor,
              fontSize: 27,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined,
                  color: textColor, size: 24),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: textColor, size: 24),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: textColor, size: 24),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Updates',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatList(),
            UpdatesScreen(),
            ChatList(),
          ],
        ),
        floatingActionButton: const FloatingActionbutton(),
      ),
    );
  }
}
