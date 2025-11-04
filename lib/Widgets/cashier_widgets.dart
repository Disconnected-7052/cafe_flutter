import 'package:flutter/material.dart';
import 'main_colors.dart';

Widget buildOptionButton({ required String label, required int buttonColor, required IconData logo}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(buttonColor),
      padding: EdgeInsets.only(top: 200, bottom: 200, left: 100, right: 100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
    ),
    onPressed: (){},
    child: Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(width: 100, child: Icon(logo, size: 20, color: Colors.white)),
      SizedBox(height: 20,),
      Text(label, style: TextStyle(color: Colors.white))
    ],
    ),
  );
}