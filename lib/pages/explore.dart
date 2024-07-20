import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interactive/CommonWidgets/filter_cards.dart';
import 'package:interactive/pages/browse_pages/Drama/drama.dart';
import 'package:interactive/pages/browse_pages/Fantasy/fantasy.dart';

import 'browse_pages/Comedy/comedy.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
            child: Text(
              'Browse our inventory of fascinating stories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fantasy()),
                      );
                    },
                    child: FilterCard(
                        text: 'Fantasy',
                        img: 'lib/images/lion_and_mouse_small.jpg'),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Comedy()),
                      );
                    },
                    child: FilterCard(
                        text: 'Comedy',
                        img: 'lib/images/lion_and_mouse_small.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Drama()),
                      );
                    },
                    child: FilterCard(
                        text: 'Drama',
                        img: 'lib/images/lion_and_mouse_small.jpg'
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FilterCard(
                      text: 'Slice Of Life',
                      img: 'lib/images/lion_and_mouse.jpg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
