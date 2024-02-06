import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool boldValue = true, colorValue = true,  largeValue = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "User Interaction",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child:  Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Type a message"
              ),
            ),
            Row(
              children: [
                Switch(value: boldValue, onChanged: (bool value){
                  setState(() {
                    boldValue = value;
                  });
                })
              ],
            )
          ],
        ),
      )
    );
  }
}
