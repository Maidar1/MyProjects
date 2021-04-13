import 'package:demo_app/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/screens/first_screen.dart';
import 'package:url_launcher/url_launcher.dart';

// YOUTUBE LINK
Future<void> _launched;
String _launchUrl = 'https://www.youtube.com/watch?v=d_HlPboLRL8';

Future<void> _launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'header_key': 'header_value'},
    );
  } else {
    throw 'Could not launch $url';
  }
}

// MAIN FUNCTION
void main() {
  runApp(App());
}

// MATERIAL APP WIDGET
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

// OTHER WIDGET'S
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Heading_1(),
            Button_1(),
            Button_2(),
            Button_3(),
          ],
        ));
  }
}

// WIDGET_1 - HEADING
class Heading_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        "YOUR TARGET EXAM",
        style: TextStyle(
            color: Colors.purple,
            fontSize: 20,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}

// WIDGET_2 - BUTTON
class Button_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}

// WIDGET_3 - BUTTON
class Button_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}

// WIDGET_4 - BUTTON
class Button_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          onPressed: () {
            _launchInBrowser(_launchUrl);
          }),
    );
  }
}
