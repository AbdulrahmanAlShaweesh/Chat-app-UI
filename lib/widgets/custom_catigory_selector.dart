import 'package:chat_app_ui/constants/constants_color.dart';
import 'package:flutter/material.dart';

class CustomCatigorySelectors extends StatefulWidget {
  CustomCatigorySelectors({super.key});

  @override
  State<CustomCatigorySelectors> createState() => _CustomCatigorySelectorsState();
}

class _CustomCatigorySelectorsState extends State<CustomCatigorySelectors> {
  List<String> catigorySelectors = [
            "Online", "Messages", 
            "Group", "Request"
  ];

  int selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 100, 
       color: kprimaryColor,
       child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: catigorySelectors.length, 
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
             child: GestureDetector(
              onTap: (){ 
                setState(() {
                   selectedIndex = index;
                });
              },
               child: Text(
                  catigorySelectors[index], style: TextStyle(fontSize: 28, color: selectedIndex == index? Colors.white: Colors.white54, fontWeight: FontWeight.bold, letterSpacing: 1.2), 
               ),
             ),
           );
         }
       ),
    );
  }
}