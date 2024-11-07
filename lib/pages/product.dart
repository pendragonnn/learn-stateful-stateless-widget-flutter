import 'package:flutter/material.dart';

import 'profile.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Page Product",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini adalah halaman product"),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // menambahkan navigation untuk pindah ke halaman sebelumnya
                    // menggunakan pop tidak memerlukan builder karena sudah terbaca secara otomatis
                    Navigator.of(context).pop();
                  },
                  child: Text("<<< Back"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // menambahkan navigation untuk pindah ke halaman sebelumnya
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
                  },
                  child: Text("Next Page >>>"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}