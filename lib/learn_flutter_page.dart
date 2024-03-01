import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => LearnFlutterPageState();
}

class LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset("images/vagabond.jpg.webp"),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.blueGrey,
              child: const Text("Welcome you vagabond!",
                  style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
                onPressed: () {
                  debugPrint("Welcome vagabond!");
                },
                child: Text(" Elevated bruh ")),
            Image.network(
                "https://static.wikia.nocookie.net/vagabond/images/4/4d/Vagabond_Musashi.jpg/revision/latest?cb=20200425161641")
          ],
        )));
  }
}
