import 'package:flutter/material.dart';
import '../Widgets/login_widgets.dart';
import '../Widgets/main_colors.dart';

class Login extends StatelessWidget {
  const Login ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(backgroundColor),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 100, right: 100, top: 45, bottom: 45),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(mainColor),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      color: Color(backgroundColor),
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 35,),
                SizedBox(
                  width: 300,
                  child: buildTextField("Username"),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 300,
                  child: buildTextField("Password")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
