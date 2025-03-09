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
            /// Platform aware rounded rectangle widget and shape
            /// use [Rectangle.custom] for uneven corners (like bottom sheets)
            Rectangle(
              radius: 12,
              color: Colors.blue,
              child: Text("Rectangle"),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: PlatformRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.blue,
              ),
              child: Text("PlatformRectangleBorder"),
            ),

            /// Platform aware capsule widget and shape
            Capsule(
              color: Colors.red,
              child: Text("Capsule"),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: const PlatformStadiumBorder(),
                color: Colors.red,
              ),
              child: Text("PlatformStadiumBorder"),
            ),

            /// Convenience circle widget
            Circle(
              diameter: 64,
              color: Colors.green,
              child: Text("Circle"),
            ),
          ],
        ),
      ),
    );
  }
}
