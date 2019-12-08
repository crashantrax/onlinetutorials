import 'package:flutter/material.dart';

void main() => runApp(Javascriptreferencesnav());

class Javascriptreferencesnav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.grey,
      ),
      home: Javascriptreferences(title: 'Javascript References'),
    );
  }
}

class Javascriptreferences extends StatefulWidget {
  Javascriptreferences({Key key, this.title}) : super(key: key);



  final String title;

  @override
  JavascriptreferencesState createState() => JavascriptreferencesState ();
}

class JavascriptreferencesState  extends State<Javascriptreferences> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('JAVASCRIPT REFERENCES'),
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
    
    )


    
    
    
    );

  }
}