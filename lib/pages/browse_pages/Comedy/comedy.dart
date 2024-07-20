import 'package:flutter/material.dart';
import 'package:interactive/CommonWidgets/browsing_cards.dart';
import 'package:interactive/pages/series/Aesopp%20Tales/The%20Lion%20and%20The%20Mouse/Story/LandMdesc.dart';
import 'package:interactive/pages/series/Aesopp%20Tales/The%20Lion%20and%20The%20Mouse/main_page.dart';

class Comedy extends StatelessWidget {
  const Comedy({super.key});

  final int elements = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comedy'),
        flexibleSpace: Container(

          decoration: BoxDecoration(
            // borderRadius: BorderRadius.vertical(
            //
            //   bottom: Radius.circular(12),
            // ),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return GestureDetector(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LAndMmainPage()),
                  );
                }, child: BrowsingCard(img: 'lib/images/lion_and_mouse_small.jpg', text: smallDesc, title: 'The Lion and The Mouse',));
              },
              childCount: elements,
            ),
          ),
        ],

      ),
    );
  }
}
