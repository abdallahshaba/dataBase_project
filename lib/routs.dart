import 'package:e_commerce_app14/appRoutes.dart';
import 'package:e_commerce_app14/view/screens/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
   AppRoutes.login : (context)=> const LoginScreen(),
};