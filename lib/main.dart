import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF1565C0); // Colors.blue[800]
    return MaterialApp(
        title: "테스트 앱 타이틀",
        home: Scaffold(
            appBar: AppBar(
              title: const Text('테스트 앱'),
              backgroundColor: Colors.deepPurple,
            ),
            body: Center(
                child: Column(
              children: [
                const Text('테스트 앱 내용 1',
                    style: TextStyle(
                      color: color,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
                const Text('테스트 앱 내용 2',
                    style: TextStyle(
                      color: color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Image.network(
                    'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                    height: 350),
                ElevatedButton(
                    onPressed: () => contactUs(context),
                    child: const Text('Click'))
              ],
            ))));
  }

  void contactUs(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text('Contact Us'),
              content: const Text('Mail us at hello@world.com'),
              actions: <Widget>[
                TextButton(
                    child: const Text('Close'),
                    onPressed: () => Navigator.of(context).pop())
              ]);
        });
  }
}
