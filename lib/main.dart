import 'package:flutter/material.dart';
import 'package:module4/Homework_10/screens/home/home_screen.dart';
import 'package:module4/Homework_8/Screens/Welcome/welcome_screen.dart';
import 'package:module4/Homework_9/screens/home/home_screen.dart';
import 'package:module4/constants.dart';
import 'package:module4/Homework_1/hm1_HomeScreen.dart';
import 'package:module4/Homework_2/hm2_HomeScreen.dart';
import 'package:module4/Homework_3/hm3_HomeScreen.dart';
import 'package:module4/Homework_4/hm4_WelcomeScreen.dart';
import 'package:module4/Homework_5/hm5_HomeScreen.dart';
import 'package:module4/Homework_6/hm6_HomeScreen.dart';
import 'package:module4/Homework_7/hm7_HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module4',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            foregroundColor: Colors.white,
            backgroundColor: kPrimaryColor,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColor,
          iconColor: kPrimaryColor,
          prefixIconColor: kPrimaryColor,
          contentPadding: EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
        textTheme: TextTheme(
          titleLarge:
              TextStyle(color: kBlackColor, fontWeight: FontWeight.normal),
          headlineLarge:
              TextStyle(color: kBlackColor, fontWeight: FontWeight.normal),
          titleSmall:
              TextStyle(color: kBlackColor, fontWeight: FontWeight.normal),
          headlineMedium:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(color: k4PrimaryColor),
          headlineSmall:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        // inputDecorationTheme: InputDecorationTheme(
        //   enabledBorder: UnderlineInputBorder(
        //     borderSide: BorderSide(
        //       color: Colors.white.withOpacity(.2),
        //     ),
        //   ),
        // ),
      ),
      home: HomeScreen(),
    );
  }
}
