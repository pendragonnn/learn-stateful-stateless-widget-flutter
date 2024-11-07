import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Page Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Ini adalah halaman profile")),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              // menambahkan navigation untuk pindah ke halaman sebelumnya
              // menggunakan pop tidak memerlukan builder karena sudah terbaca secara otomatis
              Navigator.of(context).pop();
            },
            child: Text("<<< Back"),
          ),
        ],
      ),
    );
  }
}
