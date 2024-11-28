import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module4/CustomButton.dart';
import 'package:module4/Homework_8/Screens/Welcome/welcome_screen.dart';
import 'package:module4/constants.dart';
import 'package:module4/Homework_7/hm7_WeeklyChart.dart';

class DetailsScreen7 extends StatelessWidget {
  const DetailsScreen7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 21),
                        blurRadius: 53,
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      buildTitleWithMoreIcon(),
                      SizedBox(height: 15),
                      buildCaseNumber(context),
                      SizedBox(height: 15),
                      Text(
                        "From Health Center",
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: kTextMediumColor,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      WeeklyChart(),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildInfoTextWithPercentage(
                            percentage: "6.43",
                            title: "From Last Week",
                          ),
                          buildInfoTextWithPercentage(
                            percentage: "9.43",
                            title: "Recovery Rate",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 21),
                        blurRadius: 54,
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Global Map",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SvgPicture.asset("assets/icons/more.svg")
                        ],
                      ),
                      SizedBox(height: 10),
                      SvgPicture.asset("assets/icons/map7.svg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomFloatingButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen8()),
              );
            },
          ),
        ],
      ),
    );
  }

  RichText buildInfoTextWithPercentage(
      {required String title, required String percentage}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$percentage%\n",
            style: TextStyle(
              fontSize: 20,
              color: k7PrimaryColor,
            ),
          ),
          TextSpan(
            text: title,
            style: TextStyle(
              color: kTextMediumColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Row buildCaseNumber(BuildContext context) {
    return Row(
      children: [
        Text(
          "547",
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: k7PrimaryColor, height: 1.2),
        ),
        Text(
          "5.9%",
          style: TextStyle(color: k7PrimaryColor),
        ),
        SvgPicture.asset("assets/icons/increase.svg")
      ],
    );
  }

  Row buildTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "New Cases",
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset("assets/icons/more.svg"),
      ],
    );
  }

  AppBar buildDetailsAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios,
          color: k7PrimaryColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
      ],
    );
  }
}
