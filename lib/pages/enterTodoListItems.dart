import 'package:flutter/material.dart';

class TodoListInput extends StatefulWidget {
  TodoListInput({Key key}) : super(key: key);

  @override
  _TodoListInputState createState() => _TodoListInputState();
}

class _TodoListInputState extends State<TodoListInput> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Items')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: TextField(
            controller: myController,
            decoration: InputDecoration(hintText: 'Enter a Item here...'),
            onSubmitted: (toDoItem) {},
          ),
        ),
      ),
    );
  }
}
