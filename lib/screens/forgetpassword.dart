import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneytracker/models/textfieldmodel.dart';
import 'package:moneytracker/main.dart';
import 'package:moneytracker/theme/sizeconfig.dart';

class forgetpassword extends StatelessWidget {
  const forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forget Password')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: context.screenHeight * 0.1),
          CustomTextField(
            labelText: 'Email',
            hintText: 'Enter your Email',
            suffixIcon: Icons.email,
            obscureText: false,
          ),
          SizedBox(height: context.screenHeight * 0.04),
          ElevatedButton(
            onPressed: () {
              context.go('/');
            },
            child: Text('return'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(context.screenHeight * 0.01) * 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
