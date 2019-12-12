import 'package:onlinetutorials/new_account.dart';
import 'package:onlinetutorials/second_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'colors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeData _kShrineTheme = _buildTheme();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Web Online Tutorials',
      theme: _kShrineTheme,
      home: new MyHomePage(),
    );
  }

  static ThemeData _buildTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      accentColor: CeBrown900,
      primaryColor: CeBlack1,
      buttonColor: CeBlack1,
      scaffoldBackgroundColor: CeBackgroundBlack,
      cardColor: CeBackgroundBlack,
      textSelectionColor: CeBlack1,
      errorColor: CeErrorRed,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _pseudoController = new TextEditingController();
  var _passwordController = new TextEditingController();
  var data;

  var _isSecured = true;
  @override
  Widget build(BuildContext context) {
    /**************** Get Login Connection && Data ************************/
    Future<String> getLogin(String pseudo) async {
      var response = await http.get(
          Uri.encodeFull(
              "http://webonlinetutorial.ga/FlutterTraining/Login.php?PSEUDO=${pseudo}"),
          headers: {"Accept": "application/json"});

      print(response.body);
      setState(() {
        var convertDataToJson = json.decode(response.body);
        data = convertDataToJson['result'];
      });
    }

    /*********************Alert Dialog Pseudo******************************/
    void onSignedInErrorPassword() {
      var alert = new AlertDialog(
        title: new Text("Pseudo Error"),
        content: new Text(
            "There was an Password error signing in. Please try again."),
      );
      showDialog(context: context, child: alert);
    }

    /*********************Alert Dialog Pseudo******************************/
    void onSignedInErrorPseudo() {
      var alert = new AlertDialog(
        title: new Text("Pseudo Error"),
        content:
            new Text("There was an Pseudo error signing in. Please try again."),
      );
      showDialog(context: context, child: alert);
    }

    /******************* Check Data ****************************/
    VerifData(String pseudo, String password, var datadb) {
      if (data[0]['username'] == pseudo) {
        if (data[0]['password'] == password) {
          // Navigator.of(context).pushNamed("/seconds");

          var route = new MaterialPageRoute(
            builder: (BuildContext context) => new SecondPage(
              // selectedUrl: "http://webonlinetutorial.ga",
              idUser: data[0]['user_id'],
              firstname: data[0]['first_name'],
              lastname: data[0]['last_name'],
              username: data[0]['username'],
            ),
          );
          Navigator.of(context).push(route);
        } else {
          onSignedInErrorPassword();
        }
      } else {
        onSignedInErrorPseudo();
      }
    }

    /******************* LOGO ************************/
    var logo = new Center(
      child: new Container(
        width: 190.0,
        height: 190.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(
                  "http://webonlinetutorial.ga/FlutterTraining/images/WOT2.png")),
        ),
      ),
    );
    /*******************************************************/

    /****************** TextField Pseudo*******************************/
    var pseudo = new ListTile(
      leading: const Icon(Icons.person),
      title: TextFormField(
        decoration: InputDecoration(
            labelText: "Username",
            filled: true,
            hintText: "Write your Username please",
            border: InputBorder.none),
        controller: _pseudoController,
      ),
    );

    /************************************************************/

    /******************** TextField Password ******************************/
    var password = new ListTile(
      leading: const Icon(Icons.remove_red_eye),
      title: TextField(
        decoration: InputDecoration(
            // icon: new IconButton(
            //     icon: Icon(
            //       Icons.remove_red_eye,
            //     ),
            //     onPressed: () {
            //       setState(() {
            //         _isSecured = !_isSecured;
            //       });
            //     }),
            labelText: "   Password",
            hintText: "Write your Password please",
            border: InputBorder.none),
        obscureText: _isSecured,
        controller: _passwordController,
      ),
    );

    /****************************************************/
    /********************* Button Login****************************************/
    var createaccount = new Container(
      child: FlatButton(
        child: const Text('Register'),
        onPressed: () {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) => new Register(),
          );
          Navigator.of(context).push(route);
        },
      ),
    );
/*************************************************/

    /********************* Button Login****************************************/
    var loginButton = new Container(
      child: RaisedButton(
        child: const Text('LogIn'),
        color: Theme.of(context).accentColor,
        elevation: 8.0,
        splashColor: Colors.blueGrey,
        onPressed: () {
          // Perform some action
          //SnackBar(content: Text("TEST SNACK BAR"),backgroundColor: Colors.deepOrange,);
          getLogin(_pseudoController.text);
          VerifData(_pseudoController.text, _passwordController.text, data);
        },
      ),
    );
/*************************************************/

    /********************Button Cancel ***********************/
    // var cancelButton = new Container(
    //   child: FlatButton(
    //     child: const Text('Cancel'),
    //     onPressed: () {
    //       _passwordController.clear();
    //       _pseudoController.clear();
    //     },
    //   ),
    // );

/***********************************************/

    return new Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: new ListView(
          children: <Widget>[
            SizedBox(
              height: 190.0,
            ),
            // logo,
            SizedBox(
              height: 50.0,
            ),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Card(
                elevation: 8.0,
                color: Colors.white,
                child: new Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      pseudo,
                      password,
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[ createaccount,loginButton],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
