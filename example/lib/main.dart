import 'package:flutter/material.dart';
import 'package:infamous_squircle/infamous_squircle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'infamous_squircle',
      home: Scaffold(
        body: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: ShapeDecoration(
                shape: const PlatformStadiumBorder(),
                color: Colors.red,
              ),
              child: Text("PlatformStadiumBorder"),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: PlatformBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.blue,
              ),
              child: Text("PlatformBorder"),
            ),
          ],
        ),
      ),
    );
  }
}
