// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_gpt_clone/widgets/gpt_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/typing_field.dart';
import '../widgets/user_message.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Gpt"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserMessage(
                    message: "Hello",
                  ),
                  GptMessage(message: 'Okkds'),
                  UserMessage(
                    message: "dfs",
                  ),
                  GptMessage(message: 'Okkds'),
                  GptMessage(message: 'Okkds'),
                  UserMessage(
                    message: "dfs",
                  ),
                ],
              ),
            ),
          ),
          TypingField(),
          SizedBox(height: 8.0)
        ]),
      ),
    );
  }
}
