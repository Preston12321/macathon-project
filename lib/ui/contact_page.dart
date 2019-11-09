import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts'
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add
        )
      ),
      body: Container(

      ),
    );
  }
}