import 'package:flutter/material.dart';
import 'package:moneytracker/screens/loginpage.dart';
import 'package:moneytracker/Routing/go_router.dart';

void main() {
  runApp(moneytracker());
}

class moneytracker extends StatelessWidget {
  moneytracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router, title: 'Money Tracker');
  }
}
