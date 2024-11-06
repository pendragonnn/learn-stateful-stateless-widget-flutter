import 'package:flutter/material.dart';

void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatelessWidget {
  const MyApp7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage6(),
    );
  }
}

class HomePage6 extends StatelessWidget {
  const HomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          "Bottom Sheet",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: () {
                // membuat bottom sheet modal
                showModalBottomSheet(
                  barrierColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  context: context,
                  // membuat modal tidak tertutup ketika user menyentuh layar di luar modal
                  isDismissible: false,
                  builder: (context) => Container(
                    height: 300,
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () => print("Klik Photo"),
                          leading: Icon(Icons.photo),
                          title: Text("Photo"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Music"),
                          leading: Icon(Icons.music_note),
                          title: Text("Music"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Video"),
                          leading: Icon(Icons.video_camera_back),
                          title: Text("Video"),
                        ),
                        ListTile(
                          onTap: () => print("Klik Share"),
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                        ListTile(
                          // fungsi untuk menutup bottom sheet modal
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text("Cancel"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("Show Button Sheet")),
        ),
      ),
    );
  }
}
