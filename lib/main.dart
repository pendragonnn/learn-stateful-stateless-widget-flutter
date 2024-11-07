import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp9());
}

class MyApp9 extends StatelessWidget {
  const MyApp9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage8(),
    );
  }
}
