import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playing with the Stars'),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(2, (index) {
          return Column(
            children: <Widget>[
              Star(),
              Star(),
              Star(),
              Star(),
              Star(),
              Star(),
              
            ],
          );
        }),
      ),
    );
  }
}

class Star extends StatefulWidget {
  @override
  _StarState createState() => _StarState();
}

class _StarState extends State<Star> {
  int x = 10;
  int y = 10;
  int cornum = 100;
  int g = 1;
  String cor = 'red';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: x,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.blue[cornum],
              child: Icon(Icons.star),
              onPressed: () {
                setState(() {
                  y = y + 1;
                  x = x - 1;
                  cornum = cornum + 100;
                  if (x < 0) {
                    x = 0;
                  }
                  if (y > 15) {
                    cornum = 0;
                  }
                  if (x > 17) {
                    g = g + 2;
                  }
                  print('$y,$x,$cornum,');
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: y,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              color: Colors.red[cornum],
              child: Icon(Icons.star),
              onPressed: () {
                setState(() {
                  x = x + 1;
                  y = y - 1;
                  cornum = cornum + 100;
                  if (y < 0) {
                    y = 0;
                    cornum = 100;
                  }
                  if (x > 15) {
                    cornum = 0;
                  }
                  print('$x,$y,$cornum,');
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
