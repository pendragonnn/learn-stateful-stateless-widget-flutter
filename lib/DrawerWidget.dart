import 'package:flutter/material.dart';

void main() {
  runApp(MyApp8());
}

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage7(),
    );
  }
}

class HomePage7 extends StatelessWidget {
  const HomePage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Center(
          child: Text(
            "Drawer",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      // membuat drawer
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // memindahkan teks ke pojok kiri bawah
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              // memberikan lebar widget agar tak terbatas
              width: double.infinity,
              height: 150,
              color: Colors.blue[200],
              child: Text(
                "Dasboard Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // listView membutuhkan ukuran oleh sebab itu dibungkus dengan widget Expanded
            // widget expanded mengisi sisa ukuran yang sudah diisi oleh container sebelumnya
            Expanded(
              child: ListView(
                // menghilangkan padding bawaan listView
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_checkout),
                    title: Text("Produk"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_checkout),
                    title: Text("Produk"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_checkout),
                    title: Text("Produk"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_checkout),
                    title: Text("Produk"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_checkout),
                    title: Text("Produk"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    // memberi icon di ujung pilihan menu
                    // trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
