import 'package:flutter/material.dart';

void main() => runApp(Htmlreferencesnav());

class Htmlreferencesnav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.grey,
      ),
      home: Htmlreferences(title: 'HTML References'),
    );
  }
}

class Htmlreferences extends StatefulWidget {
  Htmlreferences({Key key, this.title}) : super(key: key);



  final String title;

  @override
  HtmlreferencesState createState() => HtmlreferencesState ();
}

class HtmlreferencesState  extends State<Htmlreferences> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('HTML REFERENCES'),
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