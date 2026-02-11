import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneytracker/models/textfieldmodel.dart';
import 'package:moneytracker/screens/forgetpassword.dart';
import 'package:moneytracker/screens/registerpage.dart';
import 'package:moneytracker/theme/sizeconfig.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.screenHeight * 0.1),
              Icon(
                Icons.account_balance_wallet,
                size: context.screenHeight * 0.1,
                color: Colors.green,
              ),
              Text(
                'Money Tracker',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: context.screenHeight * 0.06),
              CustomTextField(
                labelText: 'Email',
                hintText: 'Enter your Email',
                suffixIcon: Icons.email,
                obscureText: false,
              ),
              SizedBox(height: context.screenHeight * 0.04),
              CustomTextField(
                labelText: 'Password',
                hintText: 'Enter your password',
                suffixIcon: Icons.visibility,
                obscureText: true,
                isPassword: true,
                helperText: 'Password must be at least 6 characters',
              ),

              SizedBox(height: context.screenHeight * 0.04),
              ElevatedButton(
                onPressed: () {
                  context.go('/home');
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(context.screenHeight * 0.01) * 10,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[600],
                indent: context.screenWidth * 0.1,
                endIndent: context.screenWidth * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      context.go('/forgetpassword');
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go('/register');
                    },
                    child: Text(
                      'register',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
