
import 'package:chat_app_ui/constants/constants_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FavoriteFrinds extends StatelessWidget {
  const FavoriteFrinds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120, 
      decoration: const BoxDecoration(
        color: kAccentColor,  
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), 
          topRight: Radius.circular(15.0)
        )
      ),
    );
  }
}