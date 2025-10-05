import 'package:flutter/material.dart';

class CustomTextFieldAuth extends StatelessWidget {
  const CustomTextFieldAuth({super.key, required this.hintText, required this.iconData, this.validator});
  final String hintText;
  final Icon? iconData;
  final  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          hintText: hintText,
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          suffixIcon: iconData
                        ),
                      );
  }
}