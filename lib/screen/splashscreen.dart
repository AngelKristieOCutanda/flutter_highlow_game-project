
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finalgameapp_dart/screen/home.dart';
import 'package:flutter/material.dart';
import 'help.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/images/dl2.png',
          scale: 3,),
          SizedBox(height: 80),
          const Text('High-Low', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w200, color: Colors.white, fontFamily: 'pcsenior', letterSpacing: 7.0)),
          const Text('Game Card', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200, color: Colors.white, fontFamily: 'pcsenior', letterSpacing: 7.0)),
        ],
      ),
      backgroundColor: Colors.black,
      nextScreen: const Home(),
      splashIconSize: 300,
      duration: 3000,
      animationDuration: const Duration(seconds: 5),
    );

  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset('assets/images/download7.jpg',
                  fit: BoxFit.cover,),
                )
            ),
            Container(height: 100,width: 100,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.white12,
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/dl2.png',
                        scale: 3.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('High_Low Game Card',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PlayMeGames-Demo',
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Escape the stress for today',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 40),
                  RaisedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HIghLowGame())
                    );
                  },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    color: Colors.pinkAccent,
                    padding: EdgeInsets.all(25),
                    child: Text('Start to Play',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                  SizedBox(height: 20),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpView())
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20,right: 20, bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.pinkAccent.withOpacity(0.2),
                            highlightColor: Colors.pinkAccent.withOpacity(0.2),

                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text('Want Help?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.pinkAccent,
                                      width: 4
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
