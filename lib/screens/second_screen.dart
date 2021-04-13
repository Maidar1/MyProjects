import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondScreen();
  }
}

class _SecondScreen extends State<SecondScreen> {
  double value1 = 50;
  double value2 = 20;
  double value3 = 70;
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20, right: 85, left: 85),
                    child: Text("Rank to your important topic",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,),
                  ),
                  Text("SAT MATH", style: TextStyle(color: Colors.black45, fontSize: 20,)),
                  Container(
                    child: Slider(
                        value: value1,
                        min: 0,
                        max: 100,
                        activeColor: Colors.green,
                        onChanged: (value) => this.value1 = value,
                  ),
                  ),
                  Text("SAT READING", style: TextStyle(color: Colors.black45, fontSize: 20,)),
                  Slider(
                    value: value2,
                    min: 0,
                    max: 100,
                    activeColor: Colors.green,
                    onChanged: (value) => this.value2 = value,
                  ),
                  Text("SAT WRITING", style: TextStyle(color: Colors.black45, fontSize: 20,)),
                  Slider(
                    value: value3,
                    min: 0,
                    max: 100,
                    activeColor: Colors.green,
                    onChanged: (value) => this.value3 = value,
                  ),
                ],
              ),
            )
          ),
        ),
      );
  }
}