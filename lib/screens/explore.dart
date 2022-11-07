import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodrecipe/color.dart';
import 'package:foodrecipe/utiles/catogories.dart';
import 'package:foodrecipe/utiles/explorecart.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: textColor),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  color: inActiveColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Search",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: inActiveColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                          height: 35,
                          width: 35,
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
                              "assets/icons/filter1.svg",
                              height: 20,
                              width: 20,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 10),
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
              //
              const ExploreCart(
                  image:
                      "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1peCUyMHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  name: "Mix Sald",
                  subname: "Salad",
                  userimage:
                      "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  username: "Liya"),

              const ExploreCart(
                image:
                    "https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
                name: "Rice pot",
                subname: "Hot-pot",
                userimage:
                    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                username: "Noona",
              ),
              const ExploreCart(
                image:
                    "https://images.unsplash.com/photo-1623595119708-26b1f7300075?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",
                name: "Ice Cream",
                subname: "Sweet",
                userimage:
                    "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                username: "Yunish",
              ),
              const ExploreCart(
                image:
                    "https://images.unsplash.com/photo-1581512798638-ebd32054b3b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWl4JTIwc2FsYWR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                name: "4-season salad",
                subname: "Salad",
                userimage:
                    "https://images.unsplash.com/photo-1581599129568-e33151627628?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                username: "Keto",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
