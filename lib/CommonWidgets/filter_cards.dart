import 'package:flutter/material.dart';

class FilterCard extends StatelessWidget {

  FilterCard({required this.text, required this.img});

  final String img;
  final String text;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
          
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(

            fontSize: 20,

          ),
        ),
      ),
    );
  }
}
