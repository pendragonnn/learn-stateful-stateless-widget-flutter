import 'package:flutter/material.dart';
import 'package:stateless_stateful/SnackBarWidget.dart';

void main() {
  runApp(MyApp4());
}

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  bool isHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Center(
            child: Text(
              "TextField",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body:
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(30.0),
            //     child: TextField(
            //       // otomatis memperbaiki tulisan yang typo
            //       autocorrect: true,
            //     ),
            //   ),
            // ),

            // agar tidak overflow, penggunaan listView lebih direkomendasikan dibandingkan dengan column
            ListView(
          padding: EdgeInsets.all(20),
          children: [
            // Container(
            //   height: 400,
            //   color: Colors.amber,
            // ),
            TextField(
              controller: emailController,
              autocorrect: false,
              // constraint untuk penulisan email
              // dalam keyboard akan langsung disediakan @
              keyboardType: TextInputType.emailAddress,
              // memberikan text input action
              textInputAction: TextInputAction.next,
              // memberikan label
              decoration: InputDecoration(
                // memberikan logo custom sebelum tulisan
                // prefix: Padding(
                //     padding: EdgeInsets.only(right: 20),
                //     child: Icon(Icons.email)),

                // memberikan logo otomatis sebelum tulisan (dari awal logo akan muncul)
                prefixIcon: Icon(Icons.email),
                // memberikan padding secara horizontal dan vertikal
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                // label: Text("Email")
                // tanpa menggunakan widget
                labelText: "Email",
                // memberikan border
                border: OutlineInputBorder(
                    // memberikan border radius
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              autocorrect: false,
              // agar password tidak terlihat ketika diketik
              obscureText: isHidden,
              // memberikan label
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  // memberikan padding secara horizontal dan vertikal
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  // label: Text("Email")
                  // tanpa menggunakan widget
                  labelText: "Password",
                  // memberikan border
                  border: OutlineInputBorder(
                    // memberikan border radius
                    borderRadius: BorderRadius.circular(15),
                  ),
                  // memberikan logo setelah tulisan
                  // membuat icon bisa diklik dengan IconButton
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isHidden == true) {
                            isHidden = false;
                          } else {
                            isHidden = true;
                          }
                        });
                      },
                      icon: Icon(Icons.remove_red_eye))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print(
                    "Login dengan email ${emailController.text} password: ${passwordController.text}");
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )
          ],
        ));
  }
}
