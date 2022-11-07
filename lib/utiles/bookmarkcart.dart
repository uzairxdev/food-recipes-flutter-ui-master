import 'package:flutter/material.dart';
import 'package:foodrecipe/color.dart';


class Bookmarkcart extends StatelessWidget {
  final String image;
  final String name;
  final String subname;
  final String userimage;
  final String username;
  const Bookmarkcart({ Key? key, required this.image, required this.name, required this.subname, required this.userimage, required this.username }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8),
      child: Stack(
        children: [
          Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
            
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
               
                  SizedBox(
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image:  DecorationImage(
                                    image: NetworkImage(
                                      image,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                             width: MediaQuery.of(context).size.width*0.6
                             ,
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Column(
                                
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children:  [
                                          Padding(
                                            padding: const EdgeInsets.only(top:8.0,left: 8),
                                            child: Text(
                                              name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: textColor, fontSize: 16),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              subname,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: inActiveColor,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                      
                                    ],
                                  ),
                                  const SizedBox(height:18 ,),
                                  Row(
                                    children: [
                                       CircleAvatar(
                                        radius: 16,
                                        backgroundImage: NetworkImage(
                                            userimage),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:  [
                                            Text(
                                              username,
                                              style:
                                                  const TextStyle(fontSize: 14, color: textColor),
                                            ),
                                            const Text(
                                              "Nutrition",
                                              style:
                                                  TextStyle(fontSize: 13, color: labelColor),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
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
          ),
          Positioned(
            right: 10,
            bottom: 20,
            child: Container(
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
                        ))
        ],
      ),
    );
  }
}