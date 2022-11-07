import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodrecipe/color.dart';
import 'package:foodrecipe/screens/detailespage.dart';
import 'package:foodrecipe/utiles/catogories.dart';
import 'package:foodrecipe/utiles/popular.dart';
import 'package:foodrecipe/utiles/recomanded.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: appBgColor,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/menu1.svg",
                            height: 26,
                            width: 26,
                          ),
                        )),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: inActiveColor)),
                      child: Center(
                        child: Badge(
                          badgeColor: Colors.red,
                          child: SvgPicture.asset(
                            "assets/icons/bell.svg",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Stay at home,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: textColor),
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: "make your own ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: textColor)),
                  TextSpan(
                      text: "food",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primary,
                          fontSize: 30))
                ])),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Row(
                    children: const [
                      Catogeries(
                          color: primary,
                          text: "Ramen",
                          images: "assets/images/ramen.png"),
                      Catogeries(
                          color: cardColor,
                          text: "Salad",
                          images: "assets/images/salad.png"),
                      Catogeries(
                          color: cardColor,
                          text: "Pizza",
                          images: "assets/images/pizza.png"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Popular Recipes",
                  style: TextStyle(
                      fontSize: 25,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Detailspage(
                                        image:
                                            "https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
                                        name: "Rice pot",
                                        userimage:
                                            "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                        username: "David",
                                      ))));
                        },
                        child: const Popularcart(
                            images:
                                "https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
                            name: "Rice pot",
                            userimage:
                                "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const Detailspage(
                                          image:
                                              "https://images.unsplash.com/photo-1623595119708-26b1f7300075?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",
                                          name: "Ice Cream",
                                          userimage:
                                              "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                                          username: "Maya",
                                        ))));
                          },
                          child: const Popularcart(
                              images:
                                  "https://images.unsplash.com/photo-1623595119708-26b1f7300075?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",
                              name: "Ice Cream",
                              userimage:
                                  "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Recommended Recipes",
                  style: TextStyle(
                      fontSize: 25,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Recommended(
                          name: "Yellow curry",
                          image:
                              "https://images.unsplash.com/photo-1535400875775-0269e7a919af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHllbGxvdyUyMGN1cnJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          subtitle: "Curry"),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Recommended(
                            name: "Mix-salad",
                            image:
                                "https://images.unsplash.com/photo-1623428187969-5da2dcea5ebf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                            subtitle: "Salad"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
