import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module4/CustomButton.dart';
import 'package:module4/constants.dart';
import 'package:module4/Homework_3/hm3_detailsScreen.dart';
import 'package:module4/Homework_3/category_title.dart';
import 'package:module4/Homework_3/food_card.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 50),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 11,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Simple way to find \n Tasty food",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    CategoryTitle(title: "All", active: true),
                    CategoryTitle(title: "Italian"),
                    CategoryTitle(title: "Asian"),
                    CategoryTitle(title: "Chinese"),
                    CategoryTitle(title: "Burgers"),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kBorderColor),
                ),
                child: SvgPicture.asset("assets/icons/search.svg"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    FoodCard(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsScreen3();
                          }),
                        );
                      },
                      title: "Vegan salad bowl",
                      image: "assets/images/image_1.png",
                      price: 20,
                      ingredient: "red tomato",
                      calories: "420Kcal",
                      description:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                    ),
                    FoodCard(
                      press: () {},
                      title: "Vegan salad bowl",
                      image: "assets/images/image_2.png",
                      price: 20,
                      ingredient: "red tomato",
                      calories: "420Kcal",
                      description:
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              )
            ],
          ),
          CustomFloatingButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen3()),
              );
            },
          ),
        ],
      ),
    );
  }
}
