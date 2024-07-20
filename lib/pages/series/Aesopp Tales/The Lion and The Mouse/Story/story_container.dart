import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryContainer extends StatelessWidget {
  StoryContainer({required this.text});
  final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Text(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
