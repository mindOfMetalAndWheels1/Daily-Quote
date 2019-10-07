import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _phrases = [
    "You must fall in order to rise. Hurt in order to know. Lose in order to gain. Because life's greatest lesson is learned through pain",
    "Things you don't do are the things you regret more.",
    "You wouldn't worry so much of what others think of you, if you realized how seldom they do.",
    "Stuff in your past is like a carving on the bark of sapling. Over time, the scar, won't go away. Because of the way trees grow it won't go up or down much either, it'll just stay right where it began. But it won't get bigger, you however, can. You can keep growing, doing more things, more branches, being more things, the wound won't get smaller, but you can make it a smaller part of who you are.",
    "Memory is the mother of wisdom.",
    "I define happiness as when your reality and your expectations approach each other.  If you can change your reality, then do it.  If you cannot or not willing to change your reality, then change your expectations.",
    "Truth is like poetry, and most people fucking hate poetry",
    "Grant me the senerity to accept the things I cannot change, and the courage to change the things I can, and the wisdom to know the difference",
    "No matter who you are, you won't know what kind of human being you are until the end. As death comes to embrace you, you will realize what you are.",
    "When love hurt us and run away from us, wisdom welcomes us.",
    "Don't forget. Always, somewhere, someone is fighting for you. As long as you remember this person, you are not alone.",
    "When you look too much to the void, the void looks back at you.",
    "Instagram world feels like it's built out of sad metaphors for life",
    "People live their lives bound by what they accept as correct and true. That's how they define 'reality'. But what does it mean to be 'correct' or 'true'? Merely vague concepts... Their 'reality' may all be a mirage. Can we consider them to simply be living in their own world, shaped by their beliefs?.",
    "Those who cannot acknowledge themselves, will eventually fail.",
    "Those who forgive themselves, and are able to accept their true nature... They are the strong ones.",
    "Knowledge and awareness are vague, and perhaps better called illusions. Everyone lives within their own subjective interpretation",
    "Fake tears brings pain to other people, but a fake smile brings pain to yourself."
  ];

  var _generatedPhrase = "Click below to generate a quote!";

  void _generatePhrase(){

    // 0, 1 , 2, 3
    var drawnNumber = Random().nextInt( _phrases.length );

    setState(() {
      _generatedPhrase = _phrases[ drawnNumber ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily quote"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _generatedPhrase,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "New quote",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.blueAccent,
                onPressed: _generatePhrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
