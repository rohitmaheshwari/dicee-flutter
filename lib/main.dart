import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  /*
  // by changing this number here, it won't change anything in the UI
  // because hot reload only run the code inside the Widget build method
  // so if we wanna reload then we need to declare that variable inside the Widget build {} body
  // but that variable will be created everytime the page gets rebuilt
  var leftDiceNumber = 1;
   */

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    // will be created everytime the page gets rebuilt so we are gonna place it outside this method
    // var leftDiceNumber = 3;

    void changeDiceFace() {
      setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                // string interpolation
                './images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                './images/dice$rightDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   /*
//   // by changing this number here, it won't change anything in the UI
//   // because hot reload only run the code inside the Widget build method
//   // so if we wanna reload then we need to declare that variable inside the Widget build {} body
//   // but that variable will be created everytime the page gets rebuilt
//   var leftDiceNumber = 1;
//    */
//
//   int leftDiceNumber = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     // will be created everytime the page gets rebuilt so we are gonna place it outside this method
//     // var leftDiceNumber = 3;
//     leftDiceNumber = 2;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               child: Image.asset(
//                   './images/dice$leftDiceNumber.png'), // string interpolation
//               onPressed: () {
//                 print("left button is pressed.");
//               },
//             ),
//           ),
//           // const SizedBox(
//           //   width: 20,
//           // ),
//           Expanded(
//             child: TextButton(
//               child: Image.asset('./images/dice1.png'),
//               onPressed: () {
//                 print("Right button is pressed.");
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
