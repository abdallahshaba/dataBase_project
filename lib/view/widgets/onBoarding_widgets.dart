import 'package:e_commerce_app14/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class OnboardingWidgets extends StatelessWidget {
  final String title;
  final String decription;
  final String image;
  const OnboardingWidgets({super.key, required this.title, required this.decription, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image , height: 350,),
        const SizedBox(height: 20,),
        Text(title , style: Styles.boldtextStyle20, textAlign: TextAlign.center,),
        const SizedBox(height: 20),
        Text(decription , style: Styles.regulartextStyle14, textAlign: TextAlign.center,) , 
      ],
    );
  }
}