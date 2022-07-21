import 'package:flutter/material.dart';
import 'package:quick_notion/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            TextField(
              onChanged: (text) {
                nameText = text;
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(name: nameText))
                );
              },
              child: const Text('次の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
