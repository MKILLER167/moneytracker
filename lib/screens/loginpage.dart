import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneytracker/models/textfieldmodel.dart';
import 'package:moneytracker/theme/sizeconfig.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: context.screenHeight * 0.1),
                Icon(
                  Icons.account_balance_wallet,
                  size: context.screenHeight * 0.1,
                  color: Colors.green,
                ),
                const Text(
                  'Money Tracker',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: context.screenHeight * 0.06),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.05,
                  ),
                  child: CustomTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)) {
                        return 'Enter your email@example.com';
                      }
                      return null;
                    },
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    suffixIcon: Icons.email,
                    obscureText: false,
                  ),
                ),

                SizedBox(height: context.screenHeight * 0.02),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.screenWidth * 0.05,
                  ),
                  child: CustomTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      if (!RegExp(
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                      ).hasMatch(value)) {
                        return 'Password must contain uppercase, lowercase, number, and special character';
                      }
                      return null;
                    },
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    suffixIcon: Icons.visibility,
                    obscureText: true,
                    isPassword: true,
                  ),
                ),

                SizedBox(height: context.screenHeight * 0.04),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.go('/home');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: Size(context.screenWidth * 0.9, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Login'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.go('/forgetpassword');
                      },
                      child: const Text('Forgot Password?'),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/register');
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
