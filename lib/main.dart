// ignore_for_file: dead_code

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: RandomWords(),
  ));
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State {
  final _suggestions = <WordPair>[]; //guarda las palabras sugeridas
  final _saved = <WordPair>{}; //guarda las palabras favoritas
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite List'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: _pushSaved, icon: const Icon(Icons.list))
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    //muestra la lista de palabras favoritas
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      final tiles = _saved.map((pair) {
        return ListTile(
          //Muestra un titulo o varios en la lista, se utiliza gralmente con ListView, que es una lista que se puede desplazar
          title: Text(pair.asPascalCase),
        );
      });
      final divided = ListTile.divideTiles(context: context, tiles: tiles)
          .toList(); //divide la lista de favoritos en tiles
      return Scaffold(
        appBar: AppBar(
          title: const Text("Guardados"),
        ),
        body: ListView(children: divided),
      );
    }));
  }

  Widget _buildRow(WordPair pair) {
    //muestra las palabras sugeridas
    final bool alreadySaved = _saved.contains(pair);
    for (var item in _saved) {
      // ignore: avoid_print
      print(item);
    }
    return ListTile(
      title: Text(
        pair.asPascalCase,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: Colors
            .redAccent, //si la palabra ya esta en favoritos, se pinta de rojo
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair); //elimina la palabra de la lista de favoritos
          } else {
            _saved.add(pair); //agrega la palabra a la lista de favoritos
          }
        });
      },
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return const Divider();
      //i se refiere a indice y el Divider arroja una linea divisoria si no es par

      final index = i ~/ 2;
      //dividir y redondear, es decir, va a mostar un par de palabras

      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }
}
