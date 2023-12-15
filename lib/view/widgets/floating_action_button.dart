import 'package:chat_app/view/util/colors.dart';
import 'package:flutter/material.dart';

class FloatingActionbutton extends StatelessWidget {
  const FloatingActionbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: tabColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
      child: const Icon(
        Icons.message,
        color: Colors.white,
      ),
    );
  }
}
