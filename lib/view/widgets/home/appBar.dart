import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:e_commerce_app14/core/constant/imageAsset.dart';
import 'package:e_commerce_app14/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(top: 20, right: 0 , left: 0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              // IconButton(
              //   padding: EdgeInsets.zero,
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.sort,
              //     size: 40,
              //     color: AppColors.kBackgroundColorMain,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 40,
                  child: Image.asset(
                    AppImageAsset.logo1,
                      fit: BoxFit.fill,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Badge(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.only(left: 4 , right: 3),
                  
                  largeSize: 20,
                  child: InkWell(
                    onTap: () {
                      // Get.to(const FavoriteScreen() , transition: Transition.fade);
                    },
                    child: const Padding(
                      padding:  EdgeInsets.only(right: 5),
                      child: Icon(Icons.favorite,size: 32,color: AppColors.main,),
                    ),
                    ),
                ),
              ),
              InkWell(
                    onTap: () {
                    //  Get.to(const CartScreen(),
                    //  arguments: true, // تم فتح الصفحة من الهوم
                    //  transition: Transition.downToUp,
          // );
                    },
                    child: const Padding(
                      padding:  EdgeInsets.only(right: 5),
                      child: Icon(Icons.shopping_cart,size: 32,color: AppColors.main,),
                    ),
                    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10 , top: 4),
            child: Text("Order your favourite food!" , style: Styles.boldtextStyle14,),
          )
        ],
      ) ,
      );
  }
}