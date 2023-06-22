import 'package:flutter/material.dart';
import 'package:dice/diceroller.dart';

//Alignment datatype has been set to the variable startalignment
//Alignment startalignment = Alignment.center;
const startalignment = Alignment.center;
const endalignment = Alignment.bottomLeft;

//final endalignment = Alignment.topLeft;
//final means this is the final value thatis being assigned to the variable
//no other value shall be assigned to it afterthis

Alignment? somevar;
//This statement means somevar is assigned to 'null' and can be assigned
//some value later

//any time can be assigned to the variable endalignment
//although there are more other variables that can be assigned to the variable endalignment
class GradientContainer extends StatelessWidget {
  //must introduce super.key in the constructor because
  //the parent class i.e. the statelesswidget has a required key parameter
  //one way of doing it.

  // GradientContainer({key}) : super(key: key) {
  //   print('GradientContainer Widget is created');
  // }
  // //initialization code

  //another way of doing it.

  //const GradientContainer({super.key});

  const GradientContainer(this.color1, {super.key});
  //final Color color2;
  // const GradientContainer.anotherfunction({super.key})
  //     : color1 = [
  //         Color.fromARGB(255, 93, 30, 186),
  //         Color.fromARGB(255, 134, 67, 16),
  //       ];

  final List<Color> color1;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startalignment,
          end: endalignment,
          colors: color1,
          //colors: [color1, color2],
        ),
      ),
      child: const RollDice(),
    );
  }
}
