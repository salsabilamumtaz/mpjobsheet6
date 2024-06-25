// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget {
  const TeksUtama({super.key});

  @override
  _TeksUtamaState createState() => _TeksUtamaState();
}

class _TeksUtamaState extends State<TeksUtama> {
  final listNama = [
    'SALSABILA MUMTAZ', 'ANA SAFITRI', 'GIAS GARDA PAMUNGKAS', 'LUKMAN FAOZI',
    'NIAM ABDALLAH NAWAV',
  ];

  final listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];

  int index = 0;

  void updateIndex() {
    setState(() {
      index = (index + 1) % listNama.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo Dunia'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Apa kabar',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: listWarna[index % listWarna.length],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateIndex,
        tooltip: 'Random',
        child: Icon(Icons.refresh),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: TeksUtama(),
    ),
  );
}
