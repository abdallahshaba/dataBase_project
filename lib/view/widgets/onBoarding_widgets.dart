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
        Container(
          height: 350,
          width: 400,
          child: Image.asset(image , fit: BoxFit.cover,)),
        const SizedBox(height: 20,),
        Text(title , style: Styles.boldtextStyle22, textAlign: TextAlign.center,),
        const SizedBox(height: 20),
        Text(decription , style: Styles.regulartextStyle16, textAlign: TextAlign.center,) , 
      ],
    );
  }
}