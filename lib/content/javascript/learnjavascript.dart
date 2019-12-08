import 'package:flutter/material.dart';

void main() => runApp(Learnjavascriptnav());

class Learnjavascriptnav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.grey,
      ),
      home: Learnjavascript(title: 'Learn Javascript'),
    );
  }
}

class Learnjavascript extends StatefulWidget {
  Learnjavascript({Key key, this.title}) : super(key: key);



  final String title;

  @override
  LearnjavascriptState createState() => LearnjavascriptState  ();
}

class LearnjavascriptState   extends State<Learnjavascript> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('LEARN JAVASCRIPT'),
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