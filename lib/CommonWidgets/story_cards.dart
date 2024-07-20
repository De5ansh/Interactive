import 'package:flutter/material.dart';

class StoryCards extends StatelessWidget {
  StoryCards({required this.img, required this.text});
  final String img;
  final String text;

  @override
  Widget build(BuildContext context) {



    return Card(
      clipBehavior: Clip.antiAlias,


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            img, // Replace with your image path
            fit: BoxFit.cover, // This ensures the image covers the card
            height: 200,
            width: 200// Set your desired image height
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text, // Replace with your text
              style: const TextStyle(
                fontSize: 16, // Set your desired text size
                fontWeight: FontWeight.bold, // Make text bold
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
