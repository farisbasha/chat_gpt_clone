import 'package:chat_gpt_clone/controllers/home_controller.dart';
import 'package:chat_gpt_clone/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        home: const HomePage());
  }
}
