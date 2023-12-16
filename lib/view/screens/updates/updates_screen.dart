import 'package:chat_app/view/screens/updates/widget/channel_item.dart';
import 'package:chat_app/view/screens/updates/widget/status.dart';
import 'package:chat_app/view/screens/updates/widget/text_and_icon_row.dart';
import 'package:chat_app/view/util/info.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextWithIconRow(
          text: "Status",
          icon: Icons.more_vert,
        ),
        const StatusRow(),
        const Divider(),
        const TextWithIconRow(
          text: "Channels",
          icon: Icons.add,
          iconSize: 27,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: channels.length,
            itemBuilder: (context, index) {
              final channel = channels[index];
              return ChannelItem(
                size: size,
                channelImage: '${channel['channelImage']}',
                channelName: '${channel['channelName']}',
                lastMessage: '${channel['lastMessage']}',
                lastMessageImage: '${channel['lastImage']}',
              );
            },
          ),
        ),
      ],
    );
  }
}
