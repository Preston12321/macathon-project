import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Log', //Replace with name of person later
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Send Message"),
                    content: SizedBox(
                        height: 280,
                        width: 300,
                      child: (
                        Column(
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
                        )
                      ),
                    ),
                    actions: [],
                    elevation: 24.0,
                    backgroundColor: Colors.white,
                  ),
                  barrierDismissible: true,

                );
              },
              child: const Text(
                  '✉',
                  style: TextStyle(fontSize: 20)
              ),

            ),
          ],
        ),
      ),
    );
  }
}