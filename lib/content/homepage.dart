import 'package:flutter/material.dart';
import 'package:onlinetutorials/content/html/htmlreferences.dart';
import 'package:onlinetutorials/main.dart';
import 'package:onlinetutorials/content/html/learnhtml.dart';
import 'package:onlinetutorials/content/css/learncss.dart';
import 'package:onlinetutorials/content/css/cssreferences.dart';
import 'package:onlinetutorials/content/javascript/learnjavascript.dart';
import 'package:onlinetutorials/content/javascript/javascriptreferences.dart';

void main() => runApp(Homepagenav());

class Homepagenav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.grey,
      ),
      home: Homepage(title: 'Web Online Tutorials WOT'),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Web Online Tutorials (WOT)'),
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
              //   onTap: (){
              //     Navigator.push(
              //       context,
              //       new MaterialPageRoute(
           

              //     ));

              // },
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
                        "HTML",
                        style: new TextStyle(
                            fontSize: 60.0,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "The language for building web pages",
                        maxLines: 2,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 12.0, 10.0, 12.0),
                    ),
                  ]
                  ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToLearnhtml(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "LEARN HTML",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToHtmlreferences(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "HTML REFERENCES",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                  ]),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "CSS",
                        style: new TextStyle(
                            fontSize: 60.0,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "The language for styling web pages",
                        maxLines: 2,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 12.0, 10.0, 12.0),
                    ),
                  ]
                  ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToLearncss(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "LEARN CSS",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToCssreferences(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "CSS REFERENCES",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                  ]),

              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "JavaScript",
                        style: new TextStyle(
                            fontSize: 60.0,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(
                      child: new Text(
                        "The language for programming web pages",
                        maxLines: 2,
                        style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            // fontWeight: FontWeight.w700,
                            fontFamily: "Ewert"),
                      ),
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 12.0, 10.0, 12.0),
                    ),
                  ]
                  ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToLearnjavascript(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "LEARN J.SCRIPT",
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: new FlatButton(
                          color: Colors.lightBlue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.grey,
                          onPressed: () {
                            navigateToJavascriptreferences(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => LatestUpload()),
                            // );
                            /*...*/
                          },
                          child: Text(
                            "J.SCRIPT REFERENCES",
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.w600),
                          ),
                        )),
                  ]),

              // new Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     mainAxisSize: MainAxisSize.max,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       new Padding(
              //         child: new Text(
              //           "SQL",
              //           style: new TextStyle(
              //               fontSize: 60.0,
              //               color: Colors.black,
              //               fontWeight: FontWeight.w700,
              //               fontFamily: "Ewert"),
              //         ),
              //         padding:
              //             const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              //       ),
              //     ]
              //     ),
              // new Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     mainAxisSize: MainAxisSize.max,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       new Padding(
              //         child: new Text(
              //           "The language for accessing databases",
              //           maxLines: 2,
              //           style: new TextStyle(
              //               fontSize: 15.0,
              //               color: Colors.black,
              //               // fontWeight: FontWeight.w700,
              //               fontFamily: "Ewert"),
              //         ),
              //         padding:
              //             const EdgeInsets.fromLTRB(30.0, 12.0, 10.0, 12.0),
              //       ),
              //     ]
              //     ),
              // new Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     mainAxisSize: MainAxisSize.max,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[

              //       Padding(
              //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
              //           child: new FlatButton(
              //             color: Colors.lightBlue,
              //             textColor: Colors.white,
              //             disabledColor: Colors.grey,
              //             disabledTextColor: Colors.black,
              //             splashColor: Colors.grey,
              //             onPressed: () {
              //               // Navigator.push(
              //               //   context,
              //               //   MaterialPageRoute(
              //               //       builder: (context) => LatestUpload()),
              //               // );
              //               /*...*/
              //             },
              //             child: Text(
              //               "LEARN SQL",
              //               style: TextStyle(
              //                   fontSize: 15.0, fontWeight: FontWeight.w600),
              //             ),
              //           )),
              //       Padding(
              //           padding: const EdgeInsets.only(left: 10.0),
              //           child: new FlatButton(
              //             color: Colors.lightBlue,
              //             textColor: Colors.white,
              //             disabledColor: Colors.grey,
              //             disabledTextColor: Colors.black,
              //             splashColor: Colors.grey,
              //             onPressed: () {
              //               // Navigator.push(
              //               //   context,
              //               //   MaterialPageRoute(
              //               //       builder: (context) => LatestUpload()),
              //               // );
              //               /*...*/
              //             },
              //             child: Text(
              //               "SQL REFERENCES",
              //               style: TextStyle(
              //                   fontSize: 15.0, fontWeight: FontWeight.w600),
              //             ),
              //           )),
              //     ]),
    
                ]
                )

    )


    )
    );

    
    


  }
}



Future navigateToLearnhtml(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Learnhtml()));
}

Future navigateToHtmlreferences(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Htmlreferences()));
}

Future navigateToLearncss(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Learncss()));
}

Future navigateToCssreferences(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Cssreferences()));
}

Future navigateToLearnjavascript(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Learnjavascript()));
}

Future navigateToJavascriptreferences(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Javascriptreferences()));
}
