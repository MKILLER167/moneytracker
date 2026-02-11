import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    final height = mediaquery.height;
    final width = mediaquery.width;
    final iconSize = height * 0.1;
    final buttonHeight = height * 0.06;
    final buttonWidth = width * 0.9;
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
                TextFormField(
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: width * 0.01,
                      vertical: height * 0.02,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.green),
                    suffixIcon: Icon(Icons.email),
                    hintText: 'Enter your Email',

                    border: OutlineInputBorder(
                      borderRadius: borderRadius,
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                TextFormField(
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: width * 0.01,
                      vertical: height * 0.02,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.green),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(borderRadius: borderRadius),
                  ),
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
