import 'package:flutter/material.dart';
import '../Widgets/main_colors.dart';
import '../Widgets/cashier_widgets.dart';

class CashierPage1 extends StatelessWidget {
  const CashierPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(secondColor)),
                  onPressed: (){},
                  child: Text("Logout", style: TextStyle(color: Colors.white),)
              ),
            ),
            Center(
              child: Row(mainAxisSize: MainAxisSize.min, children: [
              buildOptionButton(label: "PLACE ORDER", buttonColor: mainColor, logo: Icons.checklist,),
              SizedBox(width: 20,),
              buildOptionButton(label: "GET ORDER", buttonColor: secondColor, logo: Icons.analytics_outlined)
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}