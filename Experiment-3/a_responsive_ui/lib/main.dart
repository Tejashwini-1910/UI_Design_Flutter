import 'package:flutter/material.dart';

void main() => runApp(const ResponsiveApp());

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text("Responsive UI Example")),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile view
              return const Center(child: Text('Mobile View', style: TextStyle(fontSize: 20)));
            } else if (constraints.maxWidth < 1100) {
              // Tablet view
              return const Center(child: Text('Tablet View', style: TextStyle(fontSize: 30)));
            } else {
              // Desktop view
              return const Center(child: Text('Desktop View', style: TextStyle(fontSize: 40)));
            }
          },
        ),
      ),
    );
  }
}
