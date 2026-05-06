import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Dynamic List', home: DynamicList());
  }
}

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  DynamicListState createState() => DynamicListState();
}

class DynamicListState extends State<DynamicList> {
  List<String> items = ['Illustration', 'Animation', 'Music'];
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic List'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [],), 
          )
        ],
      ),
    );
  }
}
