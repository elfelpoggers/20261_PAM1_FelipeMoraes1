import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 77, 58, 183)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
          backgroundColor: const Color.fromARGB(255, 171, 82, 255),
      ),
      body: const Center(
        child: Text(
          'Body',
        style: TextStyle (
          fontSize: 12,
          color: Colors.indigo,
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const[
            ListTile(
              title: Text('End Drawer'),
            )
          ],
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            ListTile(
              title: Text('Drawer'),
            )
          ], //children
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // ações do botão
        },
        backgroundColor: const Color.fromARGB(255, 163, 85, 252),
        child: Text(' Botão Flutuante ',
          style: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(255, 255, 242, 241)            
              ),
          ), 
      ),
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Botão 1'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Botão 2'),
        ],
      ),
    );
  }
}
