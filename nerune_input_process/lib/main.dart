import 'package:flutter/material.dart';

void main() {
  runApp(const _Input());
}

class _Input extends StatelessWidget {
  const _Input({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'User Input', home: UserInputPage());
  }
}

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  //ignore:library_private_types_in_public_api
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Input Example')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Write some stuff',
                border: OutlineInputBorder(),
              ),
            ),
            Text('$_inputText'),
          ],
        ),
      ),
    );
  }
}
