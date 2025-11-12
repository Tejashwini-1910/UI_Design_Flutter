import 'package:flutter/material.dart';

void main() => runApp(DebugDemo());

class DebugDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DebugScreen(),
    );
  }
}

class DebugScreen extends StatefulWidget {
  @override
  _DebugScreenState createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  double? result;

  void calculate() {
    try {
      int a = 10;
      int b = 0; // intentional bug
      result = a / b; // will throw an exception
    } catch (e) {
      debugPrint("⚠️ Exception caught: $e");
      result = double.nan;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Debugging Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result: $result", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculate,
              child: Text("Calculate"),
            ),
          ],
        ),
      ),
    );
  }
}
