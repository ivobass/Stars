import 'package:cubegame/home.dart';
import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }
// isto é igual que escrever
// void main() => runApp(MyApp());

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CubeGame',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Home(),
    );
  }
}

