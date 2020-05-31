import 'package:flutter/material.dart';
import './pages/myMainPage.dart';
// import './pages/enterTodoListItems.dart' as todoListInput;

void main() => runApp(new MaterialApp(home: MyHomePage()));

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple todo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// List<String> _listItems = [
//   "Item 1",
//   "Item 2",
//   "Item 3",
//   "Item 4",
//   "Item 5",
//   "Item 6",
//   "Item 7"
// ];
// // Build the whole list of todo items
// Widget _buildTodoList() {
//   return new ListView.builder(
//     itemBuilder: (context, index) {
//       // itemBuilder will be automatically be called as many times as it takes for the
//       // list to fill up its available space, which is most likely more than the
//       // number of todo items we have. So, we need to check the index is OK.
//       if (index < _todoItems.length) {
//         return _buildTodoItem(_todoItems[index]);
//       }
//     },
//   );
// }

// // Build a single todo item
// Widget _buildDrawerListItem(String todoText) {
//   return new ListTile(title: new Text(todoText));
// }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Week 3 assignment'),
//       ),
//       body: LayoutBuilder(builder: (context, constraint) {
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Center(
//                 child: Container(
//               height: constraint.maxHeight - 50,
//               decoration: BoxDecoration(
//                 color: Colors.blueAccent,
//                 shape: BoxShape.circle,
//               ),
//               child: Center(
//                 child: Text(
//                   'Inside container',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             )),
//             Container(
//                 color: Colors.blueGrey,
//                 child: Text(
//                   'Taha Shakeel',
//                   style: TextStyle(color: Colors.white),
//                 )),
//           ],
//         );
//       }),
//       drawer: Drawer(
//         child: ListView.builder(itemBuilder: (context, index) {
//           if (index < _listItems.length) {
//             return _buildDrawerListItem(_listItems[index]);
//           }
//         }),
//       ),
//     );
//   }
// }
