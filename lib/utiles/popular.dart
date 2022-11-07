import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodrecipe/color.dart';

class Popularcart extends StatelessWidget {
  final String images;
  final String name;
  final String userimage;
  const Popularcart({Key? key, required this.images, required this.name, required this.userimage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width * 0.56,
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(15),
            image:  DecorationImage(
                image: NetworkImage(images),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/icons/bookmark.svg",
                  height: 20,
                  width: 20,
                  color: primary,
                )))),
        Positioned(
            bottom: 10,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left:8.0,right: 8),
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.52,
                  decoration: BoxDecoration(
                      color: cardColor, borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: 
                           [
                             Text(name,style: const TextStyle(fontSize: 16,),),
                            const SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Row(
                                  children: [
                                     CircleAvatar(
                                      radius: 16,
                                      backgroundImage: NetworkImage(userimage),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text("David",style: TextStyle(fontSize: 14,color: textColor),),
                                          Text("Nutrition",style: TextStyle(fontSize: 12,color: labelColor),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(6)

                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.star,size: 15,color: Colors.black,),
                                        Text("4.5")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                ),
              ),
            ))
      ],
    );
  }
}
