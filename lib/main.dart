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
            "Dialog",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // memunculkan dialog
              // context memberikan informasi mengenai isi dari seluruh aplikasi
              showDialog(
                  context: context,
                  builder: (context) =>
                      // manual
                      // Dialog(
                      //   child: Column(
                      //     mainAxisSize: MainAxisSize.min,
                      //     children: [
                      //       Text("Ini Judul"),
                      //       Text("Ini adalah deskripsi dialog. kamu bisa melihatnya disini")
                      //     ],
                      //   )
                      // )

                      // menggunakan alert dialog
                      AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        // borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
                        title: Text("Ini judul"),
                        content: Text(
                            "Ini adalah deskripsi dialog. Kamu bisa melihatnya di sini"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Cancel")),
                          ElevatedButton(onPressed: () {}, child: Text("Ok")),
                        ],
                      ));

              // menggunakan showAboutDialog
              // showAboutDialog(context: context, children: [Text("Helo")]);
            },
            child: Text("Show Dialog")),
      ),
    );
  }
}
