import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const colorGreen = Color(0xFF16A34A);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

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
          backgroundColor: colorGreen,
          brightness: Brightness.dark,
        ),
        child: SafeArea(
          child: Center(
            child: RandomWords(),
          ),
        ),
      ),
    );
  }
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return CupertinoListTile(
          title: Text(
            _suggestions[i].asPascalCase,
            style: _biggerFont,
          ),
          trailing: const Text(''),
        );
      },
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}
