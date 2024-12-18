import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module4/CustomButton.dart';
import 'package:module4/Homework_2/hm2_HomeScreen.dart';
import 'package:module4/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFF5F4eF),
                image: DecorationImage(
                  image: AssetImage("assets/images/ux_big.png"),
                  alignment: Alignment.topRight,
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/arrow-left.svg"),
                          SvgPicture.asset("assets/icons/more-vertical.svg"),
                        ],
                      ),
                      SizedBox(height: 30),
                      ClipPath(
                        clipper: BestSellerClipper(),
                        child: Container(
                          color: kBestSellerColor,
                          padding: EdgeInsets.only(
                              left: 10, top: 5, right: 20, bottom: 5),
                          child: Text(
                            "BestSeller".toUpperCase(),
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text("Design Thinking", style: kHeadingextStyle),
                      SizedBox(height: 16),
                      Row(
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/person.svg"),
                          SizedBox(width: 5),
                          Text("18K"),
                          SizedBox(width: 20),
                          SvgPicture.asset("assets/icons/star.svg"),
                          SizedBox(width: 5),
                          Text("4.8")
                        ],
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$50 ",
                              style: kHeadingextStyle.copyWith(fontSize: 32),
                            ),
                            TextSpan(
                              text: "\$70",
                              style: TextStyle(
                                color: kTextColor.withOpacity(.5),
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Course Content", style: kTitileTextStyle),
                              SizedBox(height: 30),
                              CourseContent(
                                number: "01",
                                duration: 5.35,
                                title: "Welcome to the Course",
                                isDone: true,
                              ),
                              CourseContent(
                                number: "02",
                                duration: 19.04,
                                title: "Design thinking - Intro",
                                isDone: true,
                              ),
                              CourseContent(
                                number: "03",
                                duration: 15.35,
                                title: "Design Thinking Process",
                                isDone: true,
                              ),
                              CourseContent(
                                number: "04",
                                duration: 5.35,
                                title: "Customer Perspective",
                                isDone: true,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 50,
                                  color: kTextColor.withOpacity(.1),
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(14),
                                  height: 56,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFEDEE),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: SvgPicture.asset(
                                      "assets/icons/shopping-bag.svg"),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: kBlueColor,
                                    ),
                                    child: Text(
                                      "Buy Now",
                                      style: kSubtitleTextStyle.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomFloatingButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen2()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  const CourseContent({
    super.key,
    required this.number,
    required this.duration,
    required this.title,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kSubtitleTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGreenColor.withOpacity(isDone ? 1 : .5),
            ),
            child: Icon(Icons.play_arrow, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
