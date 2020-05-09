import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown.shade800,
                child: Text('AH'),
              ),
              title: Text('Message heading sort of'),
              subtitle: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                    child: Icon(Icons.check, size: 20, color: Colors.grey),
                  ),
                  Text('Message body here')
                ],
              ),
              trailing: Column(
                children: <Widget>[
                  Text(
                    "Yesterday",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 2),
                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      radius: 10.0,
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
