import 'package:flutter/material.dart';

void main() => runApp(const MediaQueryDemo());

class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("MediaQuery & Breakpoints")),
        body: Builder(
          builder: (context) {
            var width = MediaQuery.of(context).size.width;

            String screenType;
            if (width < 600) {
              screenType = "Mobile";
            } else if (width < 1100) {
              screenType = "Tablet";
            } else {
              screenType = "Desktop";
            }

            return Center(
              child: Text(
                'Screen Type: $screenType\nWidth: ${width.toStringAsFixed(0)} px',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24),
              ),
            );
          },
        ),
      ),
    );
  }
}
