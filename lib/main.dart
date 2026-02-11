import 'package:flutter/material.dart';
import 'package:moneytracker/screens/loginpage.dart';

void main() {
  runApp(const moneytracker());
}

class moneytracker extends StatelessWidget {
  const moneytracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    );
  }
}
