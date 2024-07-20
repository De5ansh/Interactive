import 'package:flutter/material.dart';
import 'package:interactive/pages/series/Aesopp Tales/The Lion and The Mouse/Story/LandMdesc.dart';
import 'package:interactive/pages/series/Aesopp%20Tales/The%20Lion%20and%20The%20Mouse/Story/StoryPages/page_beginning.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LAndMmainPage extends StatefulWidget {
  const LAndMmainPage({super.key});

  @override
  State<LAndMmainPage> createState() => _LAndMmainPageState();
}

class _LAndMmainPageState extends State<LAndMmainPage> {

  int _counter = 0;
  String text = 'Start';

  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
      text = (prefs.getString('text') ?? 'Start');
    });
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = (prefs.getInt('counter') ?? 0);
    if (_counter == 0) {
      _counter++;
      await prefs.setInt('counter', _counter);
    }
    setState(() {
      text = (prefs.getString('text') ?? 'Start');
      if (_counter >= 1) {
        text = 'Continue reading';
        prefs.setString('text', text);
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('The Lion And The Mouse'),
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
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        "lib/images/lion_and_mouse.jpg",
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                TabBar(
                  dividerColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: 'Description'),
                    Tab(text: 'The Author'),
                    Tab(text: 'Similar')
                  ],
                ),
                Container(
                  height: 300, // You can adjust this value as needed
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          desc,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Icon(Icons
                          .directions_transit), // The widget to display when the second tab is selected
                      Icon(Icons
                          .directions_car), // The widget to display when the third tab is selected
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      _incrementCounter();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageBeginning()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Container(
                        child: Center(
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
