import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HIghLowGame(),
  ));
}

class HIghLowGame extends StatefulWidget {
  const HIghLowGame({Key? key}) : super(key: key);

  @override
  State<HIghLowGame> createState() => _HIghLowGameState();
}

class _HIghLowGameState extends State<HIghLowGame> {

  String generateRandomString(int len) {
    var r = Random();
    const _chars = 'CDHS';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
  }
  int randomNumber(int min, int max){
    int random = min + Random().nextInt(max - min);
    return random;
  }
  int score = 0;
  int cardValue = 0;
  var letter = 'C';

  var prevCardValues = [0,0,0,0,0];
  var prevCardLetters = ['C','C','C','C','C'];

  void transferValue(){

    prevCardValues[4] = prevCardValues[3];
    prevCardValues[3] = prevCardValues[2];
    prevCardValues[2] = prevCardValues[1];
    prevCardValues[1] = prevCardValues[0];
    prevCardValues[0] = cardValue;
  }
  void transferLetter(){

    prevCardLetters[4] = prevCardLetters[3];
    prevCardLetters[3] = prevCardLetters[2];
    prevCardLetters[2] = prevCardLetters[1];
    prevCardLetters[1] = prevCardLetters[0];
    prevCardLetters[0] = letter;
  }



  void tryAgain(){
    cardValue = 0;
    letter = 'C';
  }

  void greatEqual(){
    if(cardValue >= prevCardValues[1]){
      print('win');
      score++;
    }
    else{
      print('gameover');
      score = 0;
    }
  }
  void lower(){
    if(cardValue < prevCardValues[1]){
      print('win');
      score++;

    }
    else{
      print('gameover');
      score = 0;
    }
  }
  void firstcard(){
    if(score == 0){
      prevCardValues[0] = randomNumber(1, 13);
      prevCardLetters[0] = generateRandomString(1);
      int cValue2 = 0;
      var cLetter2 ='C';

      int cValue3 = 0;
      var cLetter3 = 'C';

      int cValue4 = 0;
      var cLetter4 = 'C';

      int cValue5 = 0;
      var cLetter5 = 'C';
    };
  }
  @override
  Widget build(BuildContext context) {
    firstcard();

    int cValue1 = prevCardValues[0];
    var cLetter1 = prevCardLetters[0];

    int cValue2 = prevCardValues[1];
    var cLetter2 = prevCardLetters[1];

    int cValue3 = prevCardValues[2];
    var cLetter3 = prevCardLetters[2];

    int cValue4 = prevCardValues[3];
    var cLetter4 = prevCardLetters[3];

    int cValue5 = prevCardValues[4];
    var cLetter5 = prevCardLetters[4];


    return Scaffold(
      backgroundColor: Colors.green,
      /*appBar: AppBar(
        title: Text('HIGH-LOW GAME'),
        centerTitle: true,
      ),*/
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: [
            SizedBox(height: 15.0,),
            Text(
              'Score: $score',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 60.0,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/$cValue2$cLetter2.png')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    height: 120.0,
                    width: 60.0,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/$cValue3$cLetter3.png')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    height: 120.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/$cValue4$cLetter4.png')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    height: 120.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/$cValue5$cLetter5.png')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ]
            ),
            SizedBox(height: 15.0,),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 240.0,
                    width: 120.0,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        //fit: BoxFit.fill,
                          image: AssetImage('assets/$cValue1$cLetter1.png')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),




                  Container(
                    height: 240.0,
                    width: 120.0,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                        //fit: BoxFit.fill,
                          image: AssetImage('assets/$cardValue$letter.png')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),

                ]),
            SizedBox(height: 15.0,),
            /*Center(
           child: Text(
               'Win!!',
             style: TextStyle(
               fontSize: 25.0,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),*/
            SizedBox(height: 15.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red,
                    ),
                    child: FlatButton(
                      onPressed: (){
                        setState((){
                          cardValue = randomNumber(1, 13);
                          letter = generateRandomString(1);

                          greatEqual();
                        });
                      },
                      child: Text('>=',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),),),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red,
                    ),
                    child: FlatButton(
                      onPressed: (){
                        setState((){
                          cardValue = randomNumber(1, 13);
                          letter = generateRandomString(1);
                          lower();
                        });
                      },
                      child: Text('<',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),),),
                  ),
                ]
            ),
            SizedBox(height: 15.0,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red,
                ),
                child: FlatButton(
                  onPressed: (){
                    setState((){
                      transferValue();
                      transferLetter();
                      tryAgain();
                    });
                  },
                  child: Text('Continue',),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}