import 'package:flutter/material.dart';
import 'package:flutter_row_column_stack_layout/app_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppSettings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: AppSettings.appName),
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
      body: Center(
          child: Container(
        margin: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: _buildCustomTextWidget("Hang thu nhat")),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildCustomTextWidget("Hang thu hai 1"),
                      _buildCustomTextWidget("Hang thu hai 2"),
                    ])),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Text.rich(
                  TextSpan(
                      text: 'Hang thu ba ',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'bold 1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow),
                        )
                      ]),
                )),
            const Divider(
              thickness: 5.0,
            ),
            Stack(
              // Note: Stack widget gets max. size of its children. But overlapping shapes are exceeding
              // Stack's size therefore it leads to shape was clipped.
              // We need to set clipBehavior: none so that Stack allows its children expanded outside.
              clipBehavior: Clip.none,
              children: <Widget>[
                Positioned(
                    child: Container(
                        width: 100, height: 100, color: Colors.green)),
                Positioned(
                    top: 50,
                    left: 50,
                    child:
                        Container(width: 100, height: 100, color: Colors.red)),
                Positioned(
                    top: 100,
                    left: 100,
                    child: Container(
                        width: 100, height: 100, color: Colors.yellow)),
                Container()
              ],
            )
          ],
        ),
      )),
    );
  }

  Widget _buildCustomTextWidget(String title) {
    return Text(title,
        style: const TextStyle(fontSize: 24.0, color: Colors.grey),
        textAlign: TextAlign.center);
  }
}
