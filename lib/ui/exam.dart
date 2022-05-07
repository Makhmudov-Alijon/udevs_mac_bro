import "package:flutter/material.dart";

class ListTest extends StatefulWidget {
  @override
  _ListTestState createState() => new _ListTestState();
}

class _ListTestState extends State<ListTest> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  late int _id;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(title: new Text("List"),),
      body: new ListView(
          children: new List.generate(10, (int index){
            return new ListTile(title: new Text("item#$index"),
              onTap:(){
                setState((){
                  _id = index; //if you want to assign the index somewhere to check
                });
                _scaffoldKey.currentState?.showSnackBar(new SnackBar(content: new Text("You clicked item number $index")));
              },
            );
          })

      ),
    );
  }
}