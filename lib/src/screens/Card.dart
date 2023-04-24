import 'package:flutter/material.dart';

class StatelessCard extends StatelessWidget {
  final String title;
  final Widget icon;

  StatelessCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Card(
                elevation: 0,
                color: Color.fromARGB(255, 201, 201, 201),
                child: SizedBox(
                    height: 100,
                    width: 350,
                    child: Center(
                      child: ListTile(
                        leading: icon,
                        title: Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )))));
  }
}
