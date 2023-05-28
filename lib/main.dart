import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {

  var listNama = [
    'Zidhan', 'Alex', 'Pungky', 'Rudi',
    'Natasha', 'Putri', 'Laila', 'Shela'
  ];
  var listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];
  int index = 0;

  void incrementIndex () {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 51, 202, 51),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(
          color: Colors.black12,
          spreadRadius: 2,
          offset: Offset.fromDirection(-5.5, 6.0),
          blurRadius: 2
        )]
      ),
      child: Column(
        children: [
          Text(
            'Halo Nama Saya',
            textDirection: TextDirection.ltr,
          ),
          Text(
            listNama[index % listNama.length],
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length]
            ),
          )
        ],
      )
    );
  }

}

class TeksUtama extends StatefulWidget {

  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(
    MaterialApp(
      title: 'TUGAS PAPB - ZIDHAN HADI IRAWAN - 20104410021',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TUGAS PAPB - ZIDHAN HADI IRAWAN - 20104410021'),
        ),
        body: Center(
          child: Column(
            children: [
              teksUtama
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      )
    )
  );
}