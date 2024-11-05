import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Snackbar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // menampilkan snackbar
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Delete Product Berhasil.",
                  style: TextStyle(color: Colors.black),
                ),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    print("tidak jadi hapus produk");
                  },
                  textColor: Colors.black,
                ),
                backgroundColor: Colors.amber,
                // default durasi adalah 4 detik
                duration: Duration(seconds: 3),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ));
            },
            child: Text("Show Snackbar")),
      ),
    );
  }
}
