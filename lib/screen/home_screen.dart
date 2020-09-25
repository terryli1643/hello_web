import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      // color: Colors.blue,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/a", arguments: "abc");
                },
                child: Text("painter"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("/layoutbuilder", arguments: "abc");
                },
                child: Text("layoutbuilder"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/ClipOval");
                },
                child: Text("ClipOval"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/Positioned");
                },
                child: Text("Positioned"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
