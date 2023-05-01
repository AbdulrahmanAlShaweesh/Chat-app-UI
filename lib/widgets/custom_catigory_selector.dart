// ignore_for_file: unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/constants_color.dart';

class CustomCatigorySelector extends StatefulWidget {
  CustomCatigorySelector({super.key});

  @override
  State<CustomCatigorySelector> createState() => _CustomCatigorySelectorState();
}

class _CustomCatigorySelectorState extends State<CustomCatigorySelector> {
  int currentIndex = 0; 

  List<String> hederCatigory = [
    "Messages", "Online", "Group", "Requests"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, 
      color: kprimaryColor.withOpacity(0.8), 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hederCatigory.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              setState(() {
                  currentIndex = index;
              });
            },
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 25, vertical: 35.0),
              child: Text(
                hederCatigory[index], style: TextStyle(
                  color: index == currentIndex? Colors.white: Colors.white60,
                  fontSize: 25.0, 
                  letterSpacing: 1.2, 
                  fontWeight: FontWeight.bold, 
                ), 
              ),
            ),
          );
        }
       )
    );
  }
}