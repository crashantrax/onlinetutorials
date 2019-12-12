import 'package:onlinetutorials/profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Learnhtmlnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Page",
      theme: new ThemeData(
        primarySwatch: Colors.black,
        primaryColor: Colors.black,
      ),
      home: Learnhtml(),
    );
  }
}

class Learnhtml extends StatelessWidget {
  // var idUser, username, firstname, lastname;
  // Learncss(
  //     {Key key, this.idUser, this.firstname, this.lastname, this.username})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("HTML Tutorial"),
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
                        "Examples in Every Chapter",
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
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 10.0),
                  child: new Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      child: new Text(
                        "This CSS tutorial contains hundreds of CSS examples. With our online editor, you can edit the CSS, and click on a button to view the result.",
                        style: new TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Ewert"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 10.0),
                  child: new Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      child: new Text(
                        "Example",
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Ewert"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 10.0),
                  child: Container(
                    color: Colors.black,
                    child: new Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                        child: new Text(
                          "<!DOCTYPE html>\n" + 
                          "<html>\n" +
                          "<head>\n" + 
                          "<title>Page Title</title>\n" +
                          "</head>\n"+
                          "<body>\n"+
                          "<h1>This is a Heading</h1>\n"
                          "<p>This is a paragraph.</p>\n"+
                          "</body>\n"+
                          "</html>"
                          
                          ,
                          style: new TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Ewert"),
                        ),
                      ),
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
