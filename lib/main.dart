import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'GreenRute',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(
            'GreenRute',
            style: TextStyle(
              color: CupertinoColors.white,
            ),
          ),
          backgroundColor: Color(0xff16a34a),
          brightness: Brightness.dark,
        ),
        child: SafeArea(
          child: Center(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
