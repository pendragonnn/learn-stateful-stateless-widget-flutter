import 'package:flutter/material.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage4(),
    );
  }
}

class HomePage4 extends StatefulWidget {
  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  final List data = [
    {"judul": "Pilihan ke - 1", "data": 1},
    {"judul": "Pilihan ke - 2", "data": 2},
    {"judul": "Pilihan ke - 3", "data": 3},
    {"judul": "Pilihan ke - 4", "data": 4},
    {"judul": "Pilihan ke - 5", "data": 5},
  ];

  late int dataAwal;

  // membuat data awal pilihan dalam dropdown / membuat state awal
  @override
  void initState() {
    // TODO: implement initState
    dataAwal = data[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          "Drop Down",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton<int>(
            value: dataAwal,
            items: data
                .map((e) => DropdownMenuItem(
                      child: Text("Tampilan ${e["judul"]}"),
                      value: e['data'] as int,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
