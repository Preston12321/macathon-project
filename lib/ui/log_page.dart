import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  final String _name;
  final _player = AudioCache();

  LogPage(this._name, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(182, 26, 16, 1.0),
          title: Text(
            _name, //Replace with name of person later
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: Column(children: <Widget>[
        MessageTile('Love you', '❤', 'sounds/love_you.wav', _player),
        MessageTile("Miss you", '😥', 'sounds/miss_you.wav', _player),
        MessageTile(
            'Have a great day', '☀', 'sounds/have_a_great_day.wav', _player),
        MessageTile(
            'Thinking of you', '🤔', 'sounds/thinking_of_you.wav', _player),
        //MessageTile('Thank you', '👍'),
      ]),
    );
  }
}

class MessageTile extends StatefulWidget {
  final String _name;
  final String _buttontext;
  final String _soundPath;
  final AudioCache _player;
  const MessageTile(this._name, this._buttontext, this._soundPath, this._player, {Key key})
      : super(key: key);

  @override
  _MessageTileState createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: InkWell(
          child: Icon(Icons.play_arrow),
          onTap: () {
            widget._player.play(widget._soundPath, volume: 255.0, stayAwake: true, isNotification: true);
          },
        ),
        title: Row(
          children: <Widget>[
            Text(widget._name),
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
            widget._buttontext,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
