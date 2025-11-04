import "package:flutter/material.dart";
import 'ui_pages/login.dart';
import 'ui_pages/cashier_page1.dart';

void main() => runApp(const Cafe());

class Cafe extends StatelessWidget {
  const Cafe ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CashierPage1(),
    );
  }
}
