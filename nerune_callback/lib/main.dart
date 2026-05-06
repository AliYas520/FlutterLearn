import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Callback', home: _Callback());
  }
}

class _Callback extends StatelessWidget {
  const _Callback({super.key});

  void _showMessage(String message) {
    debugPrint('P Notif : $message');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Callback Ex')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showMessage('nel Dayo');
              },
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
