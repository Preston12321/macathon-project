import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macathon_project/ui/log_page.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Contacts'
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
            Icons.add
        ),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: <Widget>[
          ContactTile("Alex Zhu",""),
          ContactTile("Bibiane Morakotkarn",""),
          ContactTile("Gwyneth John",""),
          ContactTile("Mew Soisangwan",""),
          ContactTile("Yunze Wang",""),
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
        leading: FlutterLogo(),
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
