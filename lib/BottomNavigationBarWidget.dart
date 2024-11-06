import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
}

class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage5(),
    );
  }
}

class HomePage5 extends StatefulWidget {
  const HomePage5({super.key});

  @override
  State<HomePage5> createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  // membuat state index current agar bisa berpindah menu
  late int index;
  List showWidget = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Cart"),
    ),
    Center(
      child: Text("Profile"),
    )
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // menyiapkan state awal
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Bottom Navigation Bar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: showWidget[index],
      // membuat bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        // memberi warna latar belakang
        backgroundColor: Colors.blue[200],
        // mengubah warna ketika kondisi dipilih
        selectedItemColor: Colors.amber[200],
        // mengubah warna ketika kondisi tidak dipilih
        unselectedItemColor: Colors.grey[300],
        // menempatkan posisi awal (dimulai dan default nilainya 0)
        currentIndex: index,
        // mengubah ukuran icon (default 24)
        iconSize: 20,
        // fungsi ketika salah satu menu dipilih
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
