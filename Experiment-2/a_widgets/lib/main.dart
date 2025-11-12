import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetsDemo());
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Widgets',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Experiment 2(a): Explore Widgets'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Flutter!',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.teal, width: 2),
                  ),
                  child: const Text(
                    'This is a Container Widget with padding, border and background color.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  width: 200,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('I am a Button Widget!'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
