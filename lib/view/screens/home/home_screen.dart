
import 'package:e_commerce_app14/controller/home/home_controller.dart';
import 'package:e_commerce_app14/core/functions/handlingDataView.dart';
import 'package:e_commerce_app14/view/widgets/home/appBar.dart';
import 'package:e_commerce_app14/view/widgets/home/offers_signs.dart';
import 'package:e_commerce_app14/view/widgets/home/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            CustomAppBarHome(),
            SizedBox(height: 10,),
            OffersSigns(),
           Search(),
           GetBuilder<HomeControllerImp>(builder:(controller) => HandlingDataView(
            statusrequest: controller.statusrequest, 
            widget: Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) {
              return Text("ddd");
            },),
           )
            ),)
          ],
        ),
      )
    );
  }
}