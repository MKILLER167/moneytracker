import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final IconData? suffixIcon;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? helperText;
  const CustomTextField({
    super.key,
    this.validator,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    this.isPassword = false,
    this.controller,
    required bool obscureText,
    this.helperText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscure = false;

  @override
  void initState() {
    super.initState();
    obscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscure,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Colors.green),
        hintText: widget.hintText,
        helperText: widget.helperText,
        helperStyle: TextStyle(color: Colors.red),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.green),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.green, width: 2),
        ),

        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
              )
            : (widget.suffixIcon != null ? Icon(widget.suffixIcon) : null),
      ),

      validator: widget.validator,
    );
  }
}
