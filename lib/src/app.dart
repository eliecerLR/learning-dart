import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String text = 'Payaso';
  int index = 0;
  List<String> texts = ['Tonto', 'Feo', 'Gordo'];

  void changeText() {
    setState(() {
      text = texts[index];
      index = index + 1;
      if (index == 3) {
        index = 0;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefullApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hector es $text',
              style: TextStyle(fontSize: 18),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              onPressed: () {
                changeText();
              },
              child: Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
