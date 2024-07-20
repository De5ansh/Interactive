import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interactive/CommonWidgets/app_bar_story.dart';
import 'package:interactive/pages/series/Aesopp%20Tales/The%20Lion%20and%20The%20Mouse/Story/story_map.dart';


class PageBeginning extends StatefulWidget {
  const PageBeginning({super.key});

  @override
  State<PageBeginning> createState() => _PageBeginningState();
}

class _PageBeginningState extends State<PageBeginning> {

  int index = 1;
  int _selectedChoice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF413F3F),
        title: Text(
          'Lion And The Mouse',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Text(
                story_map[index]['story'],
                style: TextStyle(
                  
                ),
              ),
            ),
            for (var i = 1; i <= story_map[1]['num']; i++)
              RadioListTile<int>(
                title: Text(story_map[1]['ch$i']['text']),
                value: i,
                groupValue: _selectedChoice,
                onChanged: (int? value) {
                  setState(() {
                    _selectedChoice = value!;
                  });
                },
              ),
          ],
        
        ),
      ),
    );
  }
}
