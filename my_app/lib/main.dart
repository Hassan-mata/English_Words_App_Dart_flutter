import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';


void main() => runApp(App());

class App extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   final wordPair = WordPair.random();

    return MaterialApp(

    theme: ThemeData(primaryColor: Colors.purple[900]),
    home : RandomWords()

    );

  } // Widget
} // class

class RandomWords extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}


class RandomWordState extends State<RandomWords> {

 Widget _build_list() {
   return ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ],
);


}
    Widget build(BuildContext context) {
      return Scaffold (
        appBar: AppBar(title: Text("WirdPair")),
        body:_build_list()
      );
}
}
