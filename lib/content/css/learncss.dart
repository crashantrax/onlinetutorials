import 'package:onlinetutorials/profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Learncssnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Page",
      theme: new ThemeData(
        primarySwatch: Colors.black,
        primaryColor: Colors.black,
      ),
      home: Learncss(),
    );
  }
}

class Learncss extends StatelessWidget {
  // var idUser, username, firstname, lastname;
  // Learncss(
  //     {Key key, this.idUser, this.firstname, this.lastname, this.username})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LEARN CSS"),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            alignment: Alignment.topRight,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "Examples in Each Chapter",
                        style: new TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 0.0, 0.0, 10.0),
                  child: new Align(
                    alignment: Alignment.centerLeft,
                    child: new Text(
                      "This CSS tutorial contains hundreds of CSS examples."+"\n"
                      +"With our online editor, you can edit the CSS, and click on a button to view the result.",
                      style: new TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Ewert"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
