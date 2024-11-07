import 'package:flutter/material.dart';

import 'product.dart';

class HomePage8 extends StatelessWidget {
  const HomePage8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Navigation",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // menambahkan navigation (pindah ke halaman lain)
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductPage(),
            ));
          },
          child: Text("Next Page"),
        ),
      ),
    );
  }
}