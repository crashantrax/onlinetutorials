import 'package:onlinetutorials/profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Htmlreferencesnav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Page",
      theme: new ThemeData(
        primarySwatch: Colors.black,
        primaryColor: Colors.black,
      ),
      home: Htmlreferences(),
    );
  }
}

class Htmlreferences extends StatelessWidget {
  // var idUser, username, firstname, lastname;
  // Learncss(
  //     {Key key, this.idUser, this.firstname, this.lastname, this.username})
  //     : super(key: key);



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("HTML REFERENCES"),
        ),
        
        body: ListView(children: <Widget>[
          new Container(
              alignment: Alignment.topRight,
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    
                    

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
                  ])),
        ])

        // new Container(
        //   child: new Center(
        //     child: new Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: <Widget>[
        //         // MaterialButton(
        //         //   color: Theme.of(context).accentColor,
        //         //   minWidth: 170.0,
        //         //   onPressed: () {
        //         //     var route = new MaterialPageRoute(
        //         //       builder: (BuildContext context) =>
        //         //           new Profile(idUser: this.idUser),
        //         //     );
        //         //     Navigator.of(context).push(route);
        //         //   },
        //         //   child: Text("Profile"),
        //         // ),
        //         // MaterialButton(
        //         //   minWidth: 170.0,
        //         //   color: Theme.of(context).accentColor,
        //         //   onPressed: () {
        //         //     var route = new MaterialPageRoute(
        //         //       builder: (BuildContext context) => new AllUsers(),
        //         //     );
        //         //     Navigator.of(context).push(route);
        //         //   },
        //         //   child: Text("All Users"),
        //         // ),
        //         // MaterialButton(
        //         //   minWidth: 170.0,
        //         //   color: Theme.of(context).accentColor,
        //         //   onPressed: () {
        //         //     _launchURL();
        //         //   },
        //         //   child: Text("Call Customer Service"),
        //         // ),
        //         // MaterialButton(
        //         //   minWidth: 170.0,
        //         //   color: Theme.of(context).accentColor,
        //         //   onPressed: () {},
        //         //   child: Text("Econstat"),
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
