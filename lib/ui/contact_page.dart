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
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () {},),
      body: ListView(
        children: <Widget>[
          ContactTile("Mew Soisangwan",""),
          ContactTile("Gwyneth John",""),
          ContactTile("Alex Zhu",""),
          ContactTile("Yunze Wang",""),
          ContactTile("Bibiane Morakotkarn",""),
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
    return ListTile(
      leading: FlutterLogo(),
      title: Text(_name),
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => LogPage(_name),
          ),
        );
      },
    );
  }
}
