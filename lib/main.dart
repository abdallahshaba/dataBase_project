import 'package:e_commerce_app14/core/binding/binding.dart';
import 'package:e_commerce_app14/core/services/services.dart';
import 'package:e_commerce_app14/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: getPages,
      initialBinding: Initialbinding(),
    );}}