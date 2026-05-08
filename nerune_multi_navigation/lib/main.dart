import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Nav',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/music': (context) =>
          const MenuPage(menuTitle:'Music', icon: Icons.music_note),
        '/art': (context) => 
          const MenuPage(menuTitle:'Art', icon: Icons.brush),
        '/animation': (context) => 
          const MenuPage(menuTitle:'Animation', icon: Icons.video_library),
        '/games': (context) => 
          const MenuPage(menuTitle:'Games', icon: Icons.videogame_asset),
      },  
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        padding: const EdgeInsets.all(20.0),
        children: [
          ElevatedButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, '/music');
            },
            icon: const Icon(Icons.music_note),
            label: const Text('Music'),
          ),
          ElevatedButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, '/art');
            },
            icon: const Icon(Icons.brush),
            label: const Text('Art'),
          ),
          ElevatedButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, '/animation');
            },
            icon: const Icon(Icons.video_library),
            label: const Text('Animation'),
          ),
          ElevatedButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, '/games');
            },
            icon: const Icon(Icons.videogame_asset),
            label: const Text('Games'),
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final String menuTitle;
  final IconData icon;

  const MenuPage({super.key, required this.menuTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuTitle),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(icon),
          label: const Text('Back to Home'),
        ),
      ),
    );
  }
}