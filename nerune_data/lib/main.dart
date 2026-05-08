import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> dataList=['Nerune','Nel','AliYa','Kurone'];
  
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('View Data'),
        ),
        body:ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(dataList[index]),
              onTap: (){
                debugPrint('${data} clicked');
              }
            );
          },
        )
      )
    );
  }
}