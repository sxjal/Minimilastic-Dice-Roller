import 'package:flutter/material.dart';
import 'package:dice/textstyle.dart';
import 'dart:math';
import 'package:shake/shake.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var intvalue1 = Random().nextInt(6) + 1;
  var intvalue2 = Random().nextInt(6) + 1;
  late var total = intvalue1 + intvalue2;
  late String dice1face = 'assets/images/dice$intvalue1.png';
  late String dice2face = 'assets/images/dice$intvalue2.png';

  void dicerolled() {
    setState(() {
      intvalue1 = Random().nextInt(6) + 1;
      intvalue2 = Random().nextInt(6) + 1;
      total = intvalue1 + intvalue2;
      dice1face = 'assets/images/dice$intvalue1.png';
      dice2face = 'assets/images/dice$intvalue2.png';
    });
  }

  @override
  void initState() {
    super.initState();
    ShakeDetector.autoStart(onPhoneShake: () {
      dicerolled();
    });
  }

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        dicerolled();
      },
      behavior: HitTestBehavior.translucent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 0.07 * MediaQuery.of(context).size.height,
            ),
            StyledText('The Number is $total', 20),
            SizedBox(
              height: 0.1 * MediaQuery.of(context).size.height,
            ),
            Image.asset(
              dice1face,
              width: 200,
            ),
            SizedBox(
              height: 0.03 * MediaQuery.of(context).size.height,
            ),
            Image.asset(
              dice2face,
              width: 200,
            ),
            SizedBox(
              height: 0.15 * MediaQuery.of(context).size.height,
            ),
            //const StyledText('Press anywhere to Roll the Dice', 16),
            const Text(
              'Press anywhere to roll',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 16,
                color: Color.fromARGB(255, 187, 187, 187),
                fontFamily: 'Poppins',
              ),
            ),

            //buttons in flutter
            //buttons are also widgets
            //buttons are also stateless widgets
            //buttons are also stateful widgets
            //types of buttons
            //1. TextButton
            //2. ElevatedButton
            //3. OutlinedButton

            // TextButton(
            //   onPressed: dicerolled,
            //   style: TextButton.styleFrom(
            //     padding: const EdgeInsets.all(16.0),
            //     foregroundColor: Colors.white,
            //     backgroundColor: const Color.fromARGB(255, 0, 120, 120),
            //     visualDensity: const VisualDensity(
            //       vertical: 2.0,
            //       horizontal: 4.0,
            //     ),
            //   ),
            //   child: const StyledText('Roll Dice', 20),
            // ),
          ],
        ),
      ),
    );
  } //build
}
