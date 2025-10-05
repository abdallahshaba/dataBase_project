import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, this.onPressed, this.backgroundColor, this.foregroundColor, required this.text, this.style});
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String text ;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
                          onPressed: onPressed,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: backgroundColor, // البرتقالي كما في الصورة
                            foregroundColor: foregroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                          child:  Text(
                            text,
                            style: style,
                          ),
                        ),
    );
  }
}