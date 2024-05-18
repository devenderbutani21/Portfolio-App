import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 100.0,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                ),
                Column(
                  children: [
                    Text("Name"),
                    Text("Designation"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
