

// ignore_for_file: prefer_const_constructors_in_immutables, unused_import

import 'package:chat_app_ui/widgets/favorite_firiend.dart';
import 'package:flutter/material.dart';
import '../constants/constants_color.dart';
import '../widgets/custom_catigory_selector.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static String id = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor.withOpacity(0.8),
       appBar: AppBar(
        leading: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.arrow_back, size: 28,color: Colors.white,), 
         ),
         title: const Text("Chat", style: TextStyle(
              fontSize: 28.0, 
              fontWeight: FontWeight.bold, 
              letterSpacing: 1.2
           ),
         ),
         actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 9.0),
              child: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.search, size: 28, color: Colors.white,)
              ),
            ),
         ],
         centerTitle: true,
         elevation: 0.0,
         backgroundColor: kprimaryColor.withOpacity(0.8),
       ),
       body: Column(
        children:  [
           CustomCatigorySelector(),
           Expanded(
             child: Container(
              decoration: const BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0), 
                  topRight: Radius.circular(15.0)
                )
              ),
              child: FavoriteFrinds(),
             ),
           ),   
        ],
       ),
    );
  }
}