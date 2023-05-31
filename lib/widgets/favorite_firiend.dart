
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat_app_ui/models/messages.dart';
import 'package:flutter/material.dart';

class FavouritContacts extends StatelessWidget {
  const FavouritContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Favorit Contacts", style: TextStyle(fontSize: 20, color: Colors.blueGrey),), 
                Icon(Icons.more_horiz, size: 28, color: Colors.blueGrey,)
              ],
            ),
          ),
        Container(
                    height: 100, 
                    // color: Colors.green, 
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: favorites.length,
                      itemBuilder: (context, index) {
                         return Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 25),
                           child: Column(
                             children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(favorites[index].imageUrl),
                              ),
                              SizedBox(height: 5,),
                               Text(
                                "${favorites[index].name}", style: TextStyle(fontSize: 18, letterSpacing: 1.0),
                                ),
                             ],
                           ),
                         );
                      }
                     ),
                  ), 
      ],
    );
  }
}