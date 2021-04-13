import 'package:demo_app/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/screens/first_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "YOUR TARGET EXAM",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "SAT SUBJECT",
                      style: TextStyle(color: Colors.black45, fontSize: 20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context ) {
                      return FirstScreen();
                    }
                    ));
                  }),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "SAT REASON",
                      style: TextStyle(color: Colors.black45, fontSize: 20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context ) {
                      return SecondScreen();
                    }
                    ));
                  }),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                    child: Text(
                      "TOEFL",
                      style: TextStyle(color: Colors.black45, fontSize: 20),
                    ),
                  ),
                  onPressed: () {}),
            ),
          ],
        ));
  }
}
