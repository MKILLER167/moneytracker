import 'package:flutter/material.dart';
import 'package:moneytracker/models/textfieldmodel.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    final height = mediaquery.height;
    final width = mediaquery.width;
    final iconSize = height * 0.1;
    final borderRadius = BorderRadius.circular(height * 0.01);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.07,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  size: iconSize,
                  color: Colors.green,
                ),
                Text(
                  'Money Tracker',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.06),
                CustomTextField(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  suffixIcon: Icons.email,
                  obscureText: false,
                ),
                SizedBox(height: height * 0.04),
                CustomTextField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: Icons.visibility,
                  obscureText: true,
                  isPassword: true,
                  helperText: 'Password must be at least 6 characters',
                ),

                SizedBox(height: height * 0.04),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: borderRadius * 10,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[600],
                  indent: width * 0.1,
                  endIndent: width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
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
      ),
    );
  }
}
