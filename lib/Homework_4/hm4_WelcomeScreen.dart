import 'package:flutter/material.dart';
import 'package:module4/CustomButton.dart';
import 'package:module4/constants.dart';
import 'package:module4/Homework_4/hm4_signin_screen.dart';

class WelcomeMenu4 extends StatelessWidget {
  const WelcomeMenu4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/perosn.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          "BAKING LESSON",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "MASTER THE ART OF BAKING",
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    // RichText(
                    //   textAlign: TextAlign.center,
                    //   text: TextSpan(
                    //     children: [
                    //       TextSpan(
                    //         text: "BAKING LESSONS",
                    //         style: Theme.of(context).textTheme.headlineMedium,
                    //       ),
                    //       TextSpan(
                    //         text: "MASTER THE ART OF BAKING",
                    //         style: Theme.of(context).textTheme.headlineSmall,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    FittedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignInScreen4();
                              },
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kPrimaryColor,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "START LEARNING",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(color: Colors.black),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          CustomFloatingButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen4()),
              );
            },
          ),
        ],
      ),
    );
  }
}
