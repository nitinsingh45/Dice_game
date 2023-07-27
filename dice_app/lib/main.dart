import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 0, 0),
      appBar: AppBar(
        title: Center(child: Text('DICEE GAME')),
        backgroundColor: Colors.blue,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  // ignore: non_constant_identifier_names
  int RightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) +
                        1; // image is from 0-5 but 0 is not in image name so we added +1 in it
                    print('left button got pressed');
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    RightDiceNumber = Random().nextInt(6) +
                        1; // image is from 0-5 but 0 is not in image name so we added +1 in it
                    print('Right button got pressed');
                  });
                },
                child: Image(
                  image: AssetImage('images/dice$RightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
