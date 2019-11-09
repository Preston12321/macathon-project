import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const RaisedButton(
            onPressed: null,
            child: Text(
                '❤',
                style: TextStyle(fontSize: 20)
            ),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text(
                'Enabled Button',
                style: TextStyle(fontSize: 20)
            ),
          ),
        ],
      ),
    );
  }
}