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
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Text("Hang thu nhat",
                    style: TextStyle(fontSize: 24.0, color: Colors.grey),
                    textAlign: TextAlign.center)),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Hang thu hai 1",
                          style: TextStyle(fontSize: 24.0, color: Colors.grey),
                          textAlign: TextAlign.center),
                      Text("Hang thu hai 2",
                          style: TextStyle(fontSize: 24.0, color: Colors.grey),
                          textAlign: TextAlign.center),
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
            )
          ],
        ),
      )),
    );
  }
}
