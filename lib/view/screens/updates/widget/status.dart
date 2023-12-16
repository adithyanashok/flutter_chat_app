import 'package:chat_app/view/util/colors.dart';
import 'package:chat_app/view/util/info.dart';
import 'package:flutter/material.dart';

class StatusRow extends StatelessWidget {
  const StatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        itemCount: status.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = status[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(data['isMe'] == true ? 0 : 2),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('${data['profilePic']}'),
                      ),
                      data['isMe'] == true
                          ? const Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: tabColor,
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  weight: 5,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  data['isMe'] == true ? 'Your status' : '${data['name']}',
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
