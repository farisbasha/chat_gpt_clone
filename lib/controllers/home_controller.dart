import 'package:chat_gpt_clone/widgets/gpt_message.dart';
import 'package:chat_gpt_clone/widgets/user_message.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// const AUTH_TOKEN = 'Bearer YOUR_TOKEN_HERE';
const AUTH_TOKEN = 'Bearer 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';

class HomeController extends GetxController {
  final List<Widget> messagesList = <Widget>[].obs;
  final isLoading = false.obs;

  final _dio = Dio(
    BaseOptions(
      headers: {
        'Authorization': AUTH_TOKEN,
        'Content-Type': 'application/json',
      },
    ),
  );

  Future<void> sendMessage(String msg) async {
    messagesList.add(UserMessage(message: msg));
    isLoading.value = true;
    final response = await _dio.post("https://api.openai.com/v1/completions",
        data: {
          "model": "text-davinci-003",
          "prompt": msg,
          "max_tokens": 64,
          "temperature": 0.5
        });
    messagesList.add(GptMessage(
        message: response.data['choices'][0]['text'].toString().trim()));
    isLoading.value = false;
  }
}
