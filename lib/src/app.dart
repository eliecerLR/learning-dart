import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  List<String> _strings = [];
  final TextEditingController _controller = TextEditingController();
  String string = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField App'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              // Add a controller
              controller: _controller,
              decoration: InputDecoration(hintText: 'Type in here...'),
              onSubmitted: (value) => {
                setState(() {
                  _strings.add(value);
                  // Clear the TextField
                  _controller.clear();
                })
              },
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
              ),
            ),
            Text('You typed in here...'),
            for (var string in _strings) Text(string),
            // Add a divider
            Divider(
              height: 20.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
