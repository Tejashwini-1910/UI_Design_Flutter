import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutDemo());
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Structures',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: const Text('Experiment 2(b): Layout Structures')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text('Column Widget Example',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Column(
                children: const [
                  Text('Line 1'),
                  Text('Line 2'),
                  Text('Line 3'),
                ],
              ),
              const Divider(height: 40, thickness: 2),
              const Text('Row Widget Example',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 60, height: 60, color: Colors.red),
                  Container(width: 60, height: 60, color: Colors.green),
                  Container(width: 60, height: 60, color: Colors.blue),
                ],
              ),
              const Divider(height: 40, thickness: 2),
              const Text('Stack Widget Example',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(width: 200, height: 200, color: Colors.amber),
                    Container(width: 150, height: 150, color: Colors.orange),
                    const Text('Stacked!',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
