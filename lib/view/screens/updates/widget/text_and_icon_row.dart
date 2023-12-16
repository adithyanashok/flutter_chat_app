import 'package:flutter/material.dart';

class TextWithIconRow extends StatelessWidget {
  const TextWithIconRow({
    super.key,
    required this.text,
    required this.icon,
    this.iconSize,
  });
  final String text;
  final IconData icon;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.grey,
              size: iconSize,
            ),
          )
        ],
      ),
    );
  }
}
