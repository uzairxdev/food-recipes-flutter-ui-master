import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodrecipe/color.dart';

class Recommended extends StatelessWidget {
  final String name;
  final String image;
  final String subtitle;
  const Recommended({Key? key, required this.name, required this.image, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:  DecorationImage(
                            image: NetworkImage(
                                image),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            name,
                            style: const TextStyle(color: textColor, fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              subtitle,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: inActiveColor,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.black,
                              ),
                              Text("4.3")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 10,
          child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromARGB(255, 204, 203, 203)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: SvgPicture.asset(
                            "assets/icons/bookmark.svg",
                            height: 15,
                            width: 15,
                            color: primary,
                          ))))
      ],
    );
  }
}
