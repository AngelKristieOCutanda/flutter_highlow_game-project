
import 'package:flutter/material.dart';
import 'dart:math';

class TabletView extends StatefulWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  State<TabletView> createState() => _HIghLowGameState();
}

class _HIghLowGameState extends State<TabletView> {

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

    return SafeArea(
      child: Stack(
          children: [
            Positioned.fill(
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset('assets/images/download5.jpg',
                    fit: BoxFit.cover,),
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
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
                          width: 80.0,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/$cValue2$cLetter2.png')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        Container(
                          height: 120.0,
                          width: 80.0,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/$cValue3$cLetter3.png')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        Container(
                          height: 120.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/$cValue4$cLetter4.png')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        Container(
                          height: 120.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/$cValue5$cLetter5.png')),
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
                                image: AssetImage('assets/images/$cValue1$cLetter1.png')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        Container(
                          height: 240.0,
                          width: 120.0,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              //fit: BoxFit.fill,
                                image: AssetImage('assets/images/$cardValue$letter.png')),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),

                      ]),
                  SizedBox(height: 1.0,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.pink,
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
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.pink,
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
                  SizedBox(height: 50.0,),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.pink.withOpacity(0.3)
                      ),
                      child: FlatButton(
                        onPressed: (){
                          setState((){
                            transferValue();
                            transferLetter();
                            tryAgain();
                          });
                        },
                        child: Text('Continue..',
                          style: TextStyle(
                              color: Colors.white
                          ),),),
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
