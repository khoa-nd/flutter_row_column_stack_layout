import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text("Hang thu nhat", style: TextStyle(fontSize: 24.0), textAlign: TextAlign.center),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("Hang thu hai 1", style: TextStyle(fontSize: 24.0), textAlign: TextAlign.center),
              Text("Hang thu hai 2", style: TextStyle(fontSize: 24.0), textAlign: TextAlign.center),
            ]
            ),
            const Text("Hang thu ba bold 1", style: TextStyle(fontSize: 24.0), textAlign: TextAlign.center),
          ],
        ),
      )
    );
  }
}
