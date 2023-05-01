
import 'package:chat_app_ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import './constants/constants_color.dart';
void main() {
  runApp(
   const ChatAppUI(),
  );
}

class ChatAppUI extends StatelessWidget {
  const ChatAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {  
        HomeScreen.id : (context) => HomeScreen(), 
      },
      initialRoute: HomeScreen.id,
    );
  }
}