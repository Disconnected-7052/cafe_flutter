import 'package:flutter/material.dart';
import '../Widgets/main_colors.dart';

class CashierPage1 extends StatelessWidget {
  const CashierPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(secondColor)),
                  onPressed: (){},
                  child: Text("Logout", style: TextStyle(color: Color(backgroundColor)),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}