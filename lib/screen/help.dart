import 'package:finalgameapp_dart/screen/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Text('Want some help?\n1. Press the "Start to play" button\n2. Guess if the next card is higher/equal or lower by pressing its assigned button\n3. If you guess it right press yes to continue the game\n4. If you guess it wrong press yess to play back',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.pink,
            ),),
          ),
          SizedBox(height: 50.0,),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                    color: Colors.pink,
              ),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home())
                  );
                },
                child: Text(' \nHome\n ',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlayMeGames-Demo',
                    color: Colors.white70,
                    letterSpacing: 2.0,
                  ),),),
            ),]
        ),
      ),
    );
  }
}
