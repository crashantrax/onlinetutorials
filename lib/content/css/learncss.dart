import 'package:flutter/material.dart';

void main() => runApp(Learncssnav());

class Learncssnav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.grey,
      ),
      home: Learncss(title: 'Learn CSS'),
    );
  }
}

class Learncss extends StatefulWidget {
  Learncss({Key key, this.title}) : super(key: key);



  final String title;

  @override
  LearncssState createState() => LearncssState  ();
}

class LearncssState   extends State<Learncss> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('LEARN CSS'),
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