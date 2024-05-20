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
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/img.jpg"),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Devender Butani",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Software Developer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            InfoSection(),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Results-driven Software Developer enhancing user engagement and driving business growth with cutting-edge technologies.",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 100),
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

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoRow(
          icon: Icons.school,
          text: "University of Windsor",
        ),
        SizedBox(
          height: 15,
        ),
        InfoRow(
          icon: Icons.computer_rounded,
          text: "Food REST API",
        ),
        SizedBox(
          height: 15,
        ),
        InfoRow(
          icon: Icons.location_pin,
          text: "Toronto, ON",
        ),
        SizedBox(
          height: 15,
        ),
        InfoRow(
          icon: Icons.email,
          text: "devenderbutani21@gmail.com",
        ),
        SizedBox(
          height: 15,
        ),
        InfoRow(
          icon: Icons.phone,
          text: "647-220-0561",
        ),
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRow({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 48,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
