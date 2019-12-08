import 'package:flutter/material.dart';

void main() => runApp(Cssreferencesnav());

class Cssreferencesnav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.grey,
      ),
      home: Cssreferences(title: 'Css References'),
    );
  }
}

class Cssreferences extends StatefulWidget {
  Cssreferences({Key key, this.title}) : super(key: key);



  final String title;

  @override
  CssreferencesState createState() => CssreferencesState ();
}

class CssreferencesState  extends State<Cssreferences> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    title: 'WOT',
    home: Scaffold(
      appBar: AppBar(
        title: Text('CSS REFERENCES'),
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