import 'package:e_commerce_app14/controller/auth/register_controller.dart';
import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:e_commerce_app14/core/constant/text_style.dart';
import 'package:e_commerce_app14/core/functions/valid_input.dart';
import 'package:e_commerce_app14/view/widgets/auth/custom_button.dart';
import 'package:e_commerce_app14/view/widgets/auth/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp controllerImp = Get.put(RegisterControllerImp());
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColorMain4, 
      body: SafeArea(
        child: Form(
          key: controllerImp.formState ,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color:  AppColors.kBackgroundColorMain4,
                  borderRadius:  BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Welcome Back , Register",
                      style: Styles.boldtextStyle26.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                     Text(
                      "Please sign up to go to login page",
                      style: Styles.regulartextStyle16.copyWith(color: const Color.fromARGB(255, 109, 106, 106))
                    ),
                  ],
                ),
              ),
          
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: Styles.regulartextStyle14
                        ),
                        const SizedBox(height: 8),
                        CustomTextFormAuth(
                      isNumber: false,
                       valid: (value) {
                        return validInput(value!, 2, 100, "username");
                      },
                      mycontroller: controllerImp.username ,
                      labeltext: "username",
                      hinttext: 'Enter username',
                      iconData: Icons.email_outlined,
                    ),    
                        const SizedBox(height: 20),
          
  
                         CustomTextFormAuth(
                      isNumber: false,
                       valid: (value) {
                        return validInput(value!, 5, 100, "email");
                      },
                      mycontroller: controllerImp.email ,
                      labeltext: "Email",
                      hinttext: 'Enter Your Email',
                      iconData: Icons.email_outlined,
                    ), 
                        const SizedBox(height: 20),

                       CustomTextFormAuth(
                      isNumber: false,
                       valid: (value) {
                        return validInput(value!, 5, 100, "phone");
                      },
                      mycontroller: controllerImp.phone ,
                      labeltext: "Phone",
                      hinttext: 'Enter Your phone',
                      iconData: Icons.phone_android_outlined,
                    ), 
          
                        const SizedBox(height: 20),
                       
                         CustomTextFormAuth(
                      isNumber: false,
                       valid: (value) {
                        return validInput(value!, 5, 100, "password");
                      },
                      mycontroller: controllerImp.password ,
                      labeltext: "Password",
                      hinttext: 'Enter Your password',
                      iconData: Icons.password_outlined,
                    ), 
                        const SizedBox(height: 25),
                        CustomButtonAuth(
                          onPressed: () async {
                           await controllerImp.signUp();
                          },
                          style: Styles.boldtextStyle16,
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.mainColor,
                          text: "Register"
                          ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account? "),
                            TextButton(
                              onPressed: () {
                                controllerImp.goToLoginScreen();
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Color(0xFFFF7A00),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}