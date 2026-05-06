import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Animate', home: Animation());
  }
}

class Animation extends StatefulWidget {
  const Animation({super.key});

  @override
  //ignore:library_private_types_in_public_api
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {
  Color _backgroundColor = Color.fromARGB(255, 25, 0, 255);

  void _changeColor() {
    setState(() {
      _backgroundColor = Color.fromARGB(255, 49, 0, 59);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Animation dayo')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          color: _backgroundColor,
          width: 200,
          height: 200,
          child: const Center(
            child: Text(
              "Magic time",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
