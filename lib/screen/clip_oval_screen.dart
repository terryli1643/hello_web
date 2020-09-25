import 'package:flutter/material.dart';

class ClipOvalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: ClipOval(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
