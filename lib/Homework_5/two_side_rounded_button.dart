import 'package:flutter/material.dart';
import 'package:module4/constants.dart';
import 'package:module4/Homework_5/hm5_DetailScreen.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final void Function()? press;
  const TwoSideRoundedButton({
    super.key,
    required this.text,
    this.radious = 29,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsScreen5();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
