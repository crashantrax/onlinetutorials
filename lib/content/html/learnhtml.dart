import 'package:flutter/material.dart';
import 'package:onlinetutorials/content/homepage.dart';

void main() => runApp(Learnhtmlnav());

class Learnhtmlnav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.grey,
      ),
      home: Learnhtml(title: 'Learn HTML'),
    );
  }
}


class Learnhtml extends StatefulWidget {
  Learnhtml({Key key, this.title}) : super(key: key);



  final String title;

  @override
  LearnhtmlState createState() => LearnhtmlState ();
}

class LearnhtmlState  extends State<Learnhtml> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('LEARN HTML'),
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(
                  color: Colors.blue,
              ),
            ),
              new ListTile(
                // leading: CircleAvatar(
                //   backgroundImage: AssetImage("assets/todolistlogo.jpg"),
                // ),
                title: Text('Drawer Example'),
                onTap: (){

              },
            )
            
          ],
        )
      ),

        body: new Container(
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
                        "HTML INTRODUCTION",
                        style: new TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToHomepage(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "< Previous",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            // navigateToHtmlreferences(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "Next >",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                  ]),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "What is HTML?",
                        style: new TextStyle(
                            fontSize: 35.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Roboto"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    ),
                  ]
                  ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "HTML is the standard markup language for",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: bold,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),
                
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "creating web pages.",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- HTML stands for Hyper Markup Language",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- HTML describes the structure of a Web page",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- HTML consists of a series of elements",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- HTML elements tell the browser how to",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "display the content",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- HTML elements are represented by tags",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- HTML tags label pieces of content such as",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "'heading', 'paragraph', 'table', and so on",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "- Browsers do not display the HTML tags, but use",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "them to render the content of the page",
                        maxLines: 4,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                    ),
                  ]
                  ),

    
    
    
                ])
                ))
                );

  }
}

Future navigateToHomepage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
}