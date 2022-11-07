import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipe/color.dart';

class Detailspage extends StatefulWidget {
  final String image;
  final String name;
  final String username;
  final String userimage;
  const Detailspage(
      {Key? key,
      required this.image,
      required this.name,
      required this.username,
      required this.userimage})
      : super(key: key);

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secondary),
                  child: const Center(
                    child: Text(
                      "Play",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primary),
                    child: const Center(
                      child: Text(
                        "Start Cooking",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 0,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.image),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.name,
                                  style: const TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.black,
                                        ),
                                        Text("4.5")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "Salad",
                              style: TextStyle(
                                color: inActiveColor,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: labelColor, width: 0.1)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              NetworkImage(widget.userimage),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.username,
                                                style: const TextStyle(
                                                    fontSize: 14,
                                                    color: textColor),
                                              ),
                                              const Text(
                                                "Nutrition",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: labelColor),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: primary,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: primary,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: primary,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: primary,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: primary,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                          const Text(
                                            "169 upvoted",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: labelColor),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Ingredients",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: DottedBorder(
                                  borderType: BorderType.Rect,
                                  strokeWidth: 0.8,
                                  dashPattern: const [
                                    1,
                                  ],
                                  color: inActiveColor,
                                  child: SizedBox(
                                    height: 80,
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.trip_origin,
                                                    color: primary,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "Egg:",
                                                    style: TextStyle(
                                                        color: inActiveColor),
                                                  ),
                                                  Text("2")
                                                ],
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.trip_origin,
                                                    color: primary,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "Milk:",
                                                    style: TextStyle(
                                                        color: inActiveColor),
                                                  ),
                                                  Text("15ml")
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.trip_origin,
                                                    color: primary,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "Sugar:",
                                                    style: TextStyle(
                                                        color: inActiveColor),
                                                  ),
                                                  Text("10mg")
                                                ],
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.trip_origin,
                                                    color: primary,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    "cheese:",
                                                    style: TextStyle(
                                                        color: inActiveColor),
                                                  ),
                                                  Text("5g")
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Text("Description",
                                    style: TextStyle(fontSize: 16))),
                            const Text(
                              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Incidunt, nihil nobis! Fuga, ipsa cupiditate.",
                              style: TextStyle(color: inActiveColor),
                            ),
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 14,
                left: 5,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)))
          ],
        ));
  }
}
