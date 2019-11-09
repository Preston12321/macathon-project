import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  final String _name;

  const LogPage(this._name, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          _name, //Replace with name of person later
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: RaisedButton(
                onPressed: () {},
                child: const Text(
                    '❤',
                    style: TextStyle(fontSize: 20)
                )
            ),
            title: Text(
                'Love you'
            ),
            trailing: Icon(
                Icons.play_arrow
            ),
          ),
          ListTile(
            leading: RaisedButton(
                onPressed: () {},
                child: const Text(
                    '😥',
                    style: TextStyle(fontSize: 20)
                )
            ),
            title: Text(
                'Thinking of you'
            ),
            trailing: Icon(
                Icons.play_arrow
            ),
          ),
          ListTile(
            leading: RaisedButton(
                onPressed: () {},
                child: const Text(
                    '🤔',
                    style: TextStyle(fontSize: 20)
                )
            ),
            title: Text(
                'Thinking of you'
            ),
            trailing: Icon(
                Icons.play_arrow
            ),
          ),
          ListTile(
            leading: RaisedButton(
                onPressed: () {},
                child: const Text(
                    '☀',
                    style: TextStyle(fontSize: 20)
                )
            ),
            title: Text(
                'Have a great day'
            ),
            trailing: Icon(
                Icons.play_arrow
            ),
          ),
          ListTile(
            leading: RaisedButton(
                onPressed: () {},
                child: const Text(
                    '👍',
                    style: TextStyle(fontSize: 20)
                )
            ),
            title: Text(
                'Thank you'
            ),
            trailing: Icon(
                Icons.play_arrow
            ),
          ),
        ],
      ),
    );
  }
}