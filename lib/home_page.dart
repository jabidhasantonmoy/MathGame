import 'package:flutter/material.dart';
import 'const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        children: [
          //level progress
          Container(
            height: 160,
            color: Colors.deepPurple,
          ),
          Expanded(
            child: Container(
              //color: const Color(0xff8d3bd1),
              child: Center(
                child: Text(
                  '1 + 1 = ?',
                  style: whiteTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: const Color(0xff62fc86),
            ),
          ),
        ],
      ),
    );
  }
}
