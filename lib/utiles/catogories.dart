import 'package:flutter/material.dart';
import 'package:foodrecipe/color.dart';

class Catogeries extends StatelessWidget {
  final Color color;
  final String text;
final String images;
  const Catogeries({Key? key, required this.color, required this.text, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width*0.29,
      
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(images,height: 30,width: 30,),
                Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: Text(
                    text,style: const TextStyle(fontSize: 15,color: textColor,fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}