import 'package:flutter/material.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage3(),
    );
  }
}

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

// menambahkan mixin TickerProviderStateMixin untuk keperluan vsync
class _HomePage3State extends State<HomePage3> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // membuat tab bar dengan default tab controller (bisa menggunakan stateless widget)
    // return DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.teal,
    //       title: Text(
    //         "Tab Bar",
    //         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //       ),
    //       // membuat tab bar
    //       bottom: TabBar(tabs: [
    //         Tab(
    //           icon: Icon(Icons.camera_alt),
    //         ),
    //         Tab(text: "Chats"),
    //         Tab(
    //           text: "Status",
    //         ),
    //         Tab(
    //           text: "Calls",
    //         ),
    //       ]),
    //     ),
    //     body:
    //         // membuat tampilan sesuai dengan tab bar nya (wajib berurutan)
    //         TabBarView(children: [
    //       Center(
    //         child: Text("Kamera"),
    //       ),
    //       Center(
    //         child: Text("Chats"),
    //       ),
    //       Center(
    //         child: Text("Status"),
    //       ),
    //       Center(
    //         child: Text("Calls"),
    //       ),
    //     ]),
    //   ),
    // );

    // membuat default tab controller dengan controller
    late TabController tabC = TabController(length: 4, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Tab Bar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // membuat tab bar
        bottom: TabBar(controller: tabC, tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(text: "Chats"),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          ),
        ]),
      ),
      body:
          // membuat tampilan sesuai dengan tab bar nya (wajib berurutan)
          TabBarView(controller: tabC, children: [
        Center(
          child: Text("Kamera"),
        ),
        Center(
          child: Text("Chats"),
        ),
        Center(
          child: Text("Status"),
        ),
        Center(
          child: Text("Calls"),
        ),
      ]),
    );
  }
}
