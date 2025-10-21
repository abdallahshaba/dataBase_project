import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:e_commerce_app14/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class OffersSigns extends StatelessWidget {
  const OffersSigns({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          alignment: Alignment.center,
          height: 150,
          decoration: BoxDecoration(
              color: AppColors.main,
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Winter Surprise..",
                style: Styles.boldtextStyle18.copyWith(color: Colors.white),
              ),
            ),
            subtitle: Text(
              "Cashback 30%",
              style: Styles.boldtextStyle26.copyWith(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          left: 250 ,
          bottom: 10,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:Color.fromARGB(255, 255, 56, 72)),
          ),
        )
      ],
    );
  }
}