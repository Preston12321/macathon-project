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
          )),
      body: Column(
        children: <Widget>[
          MessageTile('Love you', '❤'),
          MessageTile("Miss you", '😥'),
          MessageTile('Have a great day', '☀'),
          MessageTile('Thinking of you', '🤔'),
          //MessageTile('Thank you', '👍'),
        ]
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  final String _name;
  final String _buttontext;
  const MessageTile(this._name, this._buttontext, {Key key}) : super(key: key);


  @override
    Widget build(BuildContext context) {
      return Card(
        child: ListTile(
            leading: Icon(Icons.play_arrow),
            title: Row(
              children: <Widget>[
                Text(_name),
                Container(
                  width: 10,
                ),
                Container(
                  child: Icon(
                    Icons.edit,
                    size: 15,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            trailing: RaisedButton(
              onPressed: () {},
              child: Text(
                  _buttontext,
                style: TextStyle(fontSize: 20),
              ),
            ),
        ),
      );
    }
}
