import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as Quill;
import 'package:quick_notion/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  String nameText = '';
  Quill.QuillController _controller = Quill.QuillController.basic();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Quill.QuillToolbar.basic(controller: _controller),
            Expanded(
              child: Container(
                child: Quill.QuillEditor.basic(controller: _controller, readOnly: false),
              ),
            ),
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
              child: Text('次の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
