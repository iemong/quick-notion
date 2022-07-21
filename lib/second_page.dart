import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(name),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('前のページへ'),
            ),
          ],
        ),
      ),
    );
  }
}
