import 'package:flutter/material.dart';
import 'package:wp/view/settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade300,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Weather",
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              width: 100,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ));
                },
                icon: Icon(Icons.settings))
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
            child: Text(
              "Temparature ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Icon(Icons.sunny),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text("india , kakkancheri"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              color: Colors.white60,
                              child: Center(
                                  child: Text(
                                "36 C",
                                style: TextStyle(fontSize: 30),
                              )),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ));
                                  },
                                  child: Text("refresh")),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
