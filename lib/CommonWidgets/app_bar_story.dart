import 'package:flutter/material.dart';

class StoryAppBar extends StatelessWidget {

  StoryAppBar({required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: <Widget>[
          Text(
            text,
          ),
          Icon(
            Icons.menu,
          ),
        ],
      ),
    );
  }
}
