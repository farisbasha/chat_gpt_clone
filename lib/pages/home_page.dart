// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/typing_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Gpt"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Obx(() => Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ..._homeController.messagesList,
                      if (_homeController.isLoading.value)
                        const CircularProgressIndicator(),
                    ],
                  ),
                ),
              )),
          TypingField(),
          SizedBox(height: 8.0)
        ]),
      ),
    );
  }
}
