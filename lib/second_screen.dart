import 'package:onlinetutorials/all_users.dart';
import 'package:onlinetutorials/profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Page",
      theme: new ThemeData(
        primarySwatch: Colors.black,
        primaryColor: Colors.black,
      ),
      home: SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  var idUser, username, firstname, lastname;
  SecondPage(
      {Key key, this.idUser, this.firstname, this.lastname, this.username})
      : super(key: key);

  _launchURL() async {
    const url = 'tel:27181132';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make Call';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Web Online Tutorials"),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: Row(
                    children: <Widget>[
                      new Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill, image: new NetworkImage("")),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
                        child: new Column(
                          children: <Widget>[
                            // Text("User Name : ${this.username}"),
                            Text("Name : ${this.firstname} ${this.lastname}"),
                            // Text("Last Name : ${this.lastname}"),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          new ListTile(
            title: new Text('Profile'),
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) =>
                    new Profile(idUser: this.idUser),
              );
              Navigator.of(context).push(route);
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text('About Us'),
            onTap: () {},
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/youtube.png"),
            ),
            title: Text('Main Channel'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/fb.png"),
            ),
            title: Text('Facebook'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("..."),
            ),
            title: Text('Website'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      )),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // MaterialButton(
              //   color: Theme.of(context).accentColor,
              //   minWidth: 170.0,
              //   onPressed: () {
              //     var route = new MaterialPageRoute(
              //       builder: (BuildContext context) =>
              //           new Profile(idUser: this.idUser),
              //     );
              //     Navigator.of(context).push(route);
              //   },
              //   child: Text("Profile"),
              // ),
              // MaterialButton(
              //   minWidth: 170.0,
              //   color: Theme.of(context).accentColor,
              //   onPressed: () {
              //     var route = new MaterialPageRoute(
              //       builder: (BuildContext context) => new AllUsers(),
              //     );
              //     Navigator.of(context).push(route);
              //   },
              //   child: Text("All Users"),
              // ),
              // MaterialButton(
              //   minWidth: 170.0,
              //   color: Theme.of(context).accentColor,
              //   onPressed: () {
              //     _launchURL();
              //   },
              //   child: Text("Call Customer Service"),
              // ),
              // MaterialButton(
              //   minWidth: 170.0,
              //   color: Theme.of(context).accentColor,
              //   onPressed: () {},
              //   child: Text("Econstat"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
