import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parsing Data',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing Data"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ReusableCard(icon: Icons.home, title: "Home",),
            ReusableCard(icon: Icons.share, title: "Share",),
            ReusableCard(icon: Icons.settings, title: "Settings",),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.icon, this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
   );
  }
}