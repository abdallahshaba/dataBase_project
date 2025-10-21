import 'package:e_commerce_app14/appRoutes.dart';
import 'package:e_commerce_app14/core/middleware/middleware.dart';
import 'package:e_commerce_app14/view/screens/auth/login.dart';
import 'package:e_commerce_app14/view/screens/auth/signUp.dart';
import 'package:e_commerce_app14/view/screens/home/home_screen.dart';
import 'package:e_commerce_app14/view/screens/onBoarding_screen.dart';
import 'package:e_commerce_app14/view/testScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';



List<GetPage<dynamic>>? getPages = [

  GetPage(name: "/", page: () => const LoginScreen()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUpScreen()),
  GetPage(name: AppRoutes.homeMain, page: () => const HomeScreen()),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnboardingScreen() , middlewares:[
    Middleware()
  ]),
  GetPage(name: AppRoutes.test, page: () => const TestScreen()),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.login, page: () => const LoginScreen()),

];