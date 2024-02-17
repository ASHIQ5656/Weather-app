import 'package:flutter/material.dart';
import 'package:wp/view/home_screen.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.location_on_outlined),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "country , city", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Text("save"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
