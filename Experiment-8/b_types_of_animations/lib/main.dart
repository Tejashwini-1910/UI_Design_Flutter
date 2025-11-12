import 'package:flutter/material.dart';

void main() => runApp(const MultiAnimationApp());

class MultiAnimationApp extends StatelessWidget {
  const MultiAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationTypesDemo(),
    );
  }
}

class AnimationTypesDemo extends StatefulWidget {
  const AnimationTypesDemo({super.key});

  @override
  State<AnimationTypesDemo> createState() => _AnimationTypesDemoState();
}

class _AnimationTypesDemoState extends State<AnimationTypesDemo>
    with SingleTickerProviderStateMixin {
  bool _visible = true;
  bool _moved = false;
  double _scale = 1.0;

  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 0))
            .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  void _startAnimations() {
    setState(() {
      _visible = !_visible;
      _moved = !_moved;
      _scale = _scale == 1.0 ? 1.5 : 1.0;
    });
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fade, Slide & Scale Animations")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.2,
              duration: const Duration(seconds: 1),
              child: const Text(
                "Fade Animation",
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            SlideTransition(
              position: _slideAnimation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
            AnimatedScale(
              scale: _scale,
              duration: const Duration(seconds: 1),
              child: const Icon(Icons.favorite, color: Colors.red, size: 60),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _startAnimations,
              child: const Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
