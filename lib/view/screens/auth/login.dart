
import 'package:e_commerce_app14/controller/auth/login_controoler.dart';
import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:e_commerce_app14/core/constant/text_style.dart';
import 'package:e_commerce_app14/core/functions/alertExitApp.dart';
import 'package:e_commerce_app14/core/functions/valid_input.dart';
import 'package:e_commerce_app14/view/screens/auth/signUp.dart';
import 'package:e_commerce_app14/view/widgets/auth/custom_button.dart';
import 'package:e_commerce_app14/view/widgets/auth/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColorMain4,
      body: WillPopScope(child: SafeArea(
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
                      "Log In",
                      style: Styles.boldtextStyle26.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                     Text(
                      "Please sign in to your existing account",
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
                          "Email",
                          style: Styles.regulartextStyle14
                        ),
                        const SizedBox(height: 8),
                         CustomTextFieldAuth(
                          validator: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          iconData: const Icon(Icons.email_outlined),
                          hintText: "Enter your email"),     
                        const SizedBox(height: 20),
                        // Password Field
                        const Text(
                          "Password",
                          style: Styles.regulartextStyle14
                        ),
                        const SizedBox(height: 8),
                         CustomTextFieldAuth(
                          validator: (val) {
                            return validInput(val!, 5, 100, "password");
                          },
                          hintText: "Enter Password", iconData: const Icon(Icons.visibility_outlined)),
                        const SizedBox(height: 20),
          
                   
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {},
                                  checkColor: Colors.white,
                                  activeColor: Colors.orange,
                                ),
                                const Text("Remember me", style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                controllerImp.goToRegisterScreen();
                              },
                              child:  Text(
                                "Forgot Password",
                                style: Styles.boldtextStyle12.copyWith(color: AppColors.mainColor)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 70),

                        CustomButtonAuth(
                          onPressed: () {
                            controllerImp.login();
                          },
                          style: Styles.boldtextStyle16,
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.mainColor,
                          text: "Log In"
                          ),
                        const SizedBox(height: 20),
          

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account? "),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (_) => const SignUpScreen()),
                                );
                              },
                              child: const Text(
                                "SIGN UP",
                                style: TextStyle(
                                  color: Color(0xFFFF7A00),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
          
  
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey[300],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "Or",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey[300],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
          
     
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _socialButton(
                              icon: Icons.facebook,
                              color: Colors.blue[900]!,
                            ),
                            const SizedBox(width: 16),
                            _socialButton(
                              icon: Icons.add,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 16),
                            _socialButton(
                              icon: Icons.apple,
                              color: Colors.black,
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
      ), onWillPop:  () async {
  alertExitApp();
  return false ;
},
)
    );
  }

  Widget _socialButton({required IconData icon, required Color color}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}