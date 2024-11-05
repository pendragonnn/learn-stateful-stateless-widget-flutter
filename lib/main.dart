import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// di flutter terdapat 2 jenis widget yaitu stateful dan stateless
// stateless memiliki tampilan yang statis sehingga tidak terjadi perubahan data pada screen (tidak memiliki fungsi setState())
// stateful memiliki tampilan yang dinamis/bisa berubah-ubah karena memiliki state
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Center(
            child: Text(
              "Increment Apps",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nilai--;
                        });
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nilai++;
                        });
                      },
                      child: Icon(Icons.add)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
