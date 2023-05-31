// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app_ui/constants/constants_color.dart';
import 'package:chat_app_ui/models/messages.dart';
import 'package:chat_app_ui/widgets/custom_catigory_selector.dart';
import 'package:chat_app_ui/widgets/favorite_firiend.dart';
import 'package:chat_app_ui/widgets/recint_chat.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static String id = "home screen"; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kprimaryColor,
        leading: const Icon(
          Icons.menu, size: 28, color: Colors.white,
        ),
        title: const Text(
          "Chats", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search, size: 28, color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          CustomCatigorySelectors(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kAccentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(20)
                )
              ),
              child: Column(
                children: [
                  FavouritContacts(),
                  RecintChat(),
                   
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}