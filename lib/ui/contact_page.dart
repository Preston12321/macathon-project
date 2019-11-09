import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macathon_project/ui/log_page.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(182, 26, 16, 1.0),
        title: Text(
          'Contacts'
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
            Icons.add
        ),
        onPressed: () {},
        backgroundColor: Color.fromRGBO(182, 26, 16, 1.0),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: <Widget>[
          ContactTile("Alex Zhu","assets/images/alex.jpg"),
          ContactTile("Bibiane Morakotkarn","assets/images/bibiane.jpg"),
          ContactTile("Gwyneth John","assets/images/gwyn.jpg"),
          ContactTile("Mew Soisangwan","assets/images/mew.jpg"),
          ContactTile("Yunze Wang","assets/images/yunze.jpg"),
        ],
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final String _name;
  final String _imagePath;

  const ContactTile(this._name, this._imagePath, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(_imagePath)),
        title: Text(_name),
        onTap: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => LogPage(_name),
            ),
          );
        },
      ),
    );
  }
}
