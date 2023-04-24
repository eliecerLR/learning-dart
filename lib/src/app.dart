import 'package:first_app/src/screens/Card.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Flutter Demo Stateless Widget')),
        ),
        body: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(children: <Widget>[
              StatelessCard(
                  title: 'I love Flutter',
                  icon: const Icon(
                      color: Color.fromARGB(255, 243, 33, 33),
                      Icons.favorite,
                      size: 50)),
              StatelessCard(
                  title: 'I love Donuts',
                  icon: const Icon(
                      color: Colors.pinkAccent, Icons.donut_large, size: 50)),
              StatelessCard(
                  title: 'I see you',
                  icon: const Icon(
                      color: Colors.blue, Icons.visibility, size: 50)),
            ])));
  }
}
