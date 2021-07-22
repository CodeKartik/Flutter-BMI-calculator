import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  final String bottomtext;
  final Function onTap;

  BottomButton({@required this.bottomtext, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottomtext,
            style: kLargeButtonTextStyle,
          ),
        ),
        height: kBottombarheight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kBottomContainerColour, Colors.blue],
          ),
          // color: bottomContainerColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
