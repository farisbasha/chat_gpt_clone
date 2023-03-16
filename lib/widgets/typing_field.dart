import 'package:flutter/material.dart';

class TypingField extends StatelessWidget {
  TypingField({
    super.key,
  });
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Type a message",
                border: InputBorder.none,
              ),
              controller: _controller,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
