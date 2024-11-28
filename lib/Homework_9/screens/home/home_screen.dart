import 'package:flutter/material.dart';
import 'package:module4/CustomButton.dart';
import 'package:module4/Homework_9/components/bottom_nav_bar.dart';
import 'package:module4/Homework_9/screens/details/details_screen.dart';
import 'package:module4/Homework_9/screens/home/components/app_bar.dart';
import 'package:module4/Homework_9/screens/home/components/body.dart';

class HomeScreen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar9(),
      body: Stack(
        children: [
          BodyMain(),
          CustomFloatingButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen9()),
              );
            },
          ),
        ],
      ),
    );
  }
}
