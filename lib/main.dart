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
                  radius: 60,
                  backgroundImage: AssetImage(
                    "assets/images/img.jpg",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Devender Butani",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: "assets/fonts/Roboto-Medium.ttf",
                      ),
                    ),
                    Text(
                      "Software Developer",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.school,
                        size: 48,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "University of Windsor",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.computer_rounded,
                        size: 48,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "School Name",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_city,
                        size: 48,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "School Name",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 48,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "School Name",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 48,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "School Name",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel urna nec purus facilisis cursus. Curabitur tincidunt sem ac eros gravida, ac placerat libero dignissim.",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              "Created by Devender Butani",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
