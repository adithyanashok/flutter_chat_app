import 'package:flutter/material.dart';

class ChannelItem extends StatelessWidget {
  const ChannelItem({
    super.key,
    required this.size,
    required this.channelImage,
    required this.channelName,
    required this.lastMessage,
    required this.lastMessageImage,
  });

  final Size size;
  final String channelImage;
  final String channelName;
  final String lastMessage;
  final String lastMessageImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  channelImage,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                channelName,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.7,
                child: Text(
                  lastMessage,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(lastMessageImage),
                  ),
                ),
              )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
