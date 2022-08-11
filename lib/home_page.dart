import 'package:flutter/material.dart';
import 'const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // number pad
  List<String> numberPad = [
    '7',
    '8',
    '9',
    'C',
    '4',
    '5',
    '6',
    'DEL',
    '1',
    '2',
    '3',
    '=',
    '0',
  ];

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
              child: GridView.builder(
                itemCount: numberPad.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Container(
                      color: Colors.deepPurple,
                      child: Center(
                        child: Text(
                          numberPad[index],
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  );
                },
              ),
              //color: const Color(0xff62fc86),
            ),
          ),
        ],
      ),
    );
  }
}
