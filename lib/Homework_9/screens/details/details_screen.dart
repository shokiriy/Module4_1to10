import 'package:flutter/material.dart';
import 'package:module4/CustomButton.dart';
import 'package:module4/Homework_10/screens/home/home_screen.dart';
import 'package:module4/Homework_9/screens/details/components/app_bar.dart';
import 'package:module4/Homework_9/screens/details/components/body.dart';
import 'package:module4/constants.dart';

class DetailsScreen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Stack(
        children: [
          Body(),
          CustomFloatingButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen10()),
              );
            },
          ),
        ],
      ),
    );
  }
}
