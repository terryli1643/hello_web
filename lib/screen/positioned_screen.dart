import 'package:flutter/material.dart';

class PositionedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -100,
            child: ClipOval(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            left: -100,
            child: ClipOval(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
          ),
          // Positioned.fill(
          //   child: Container(
          //     height: 200,
          //     width: 200,
          //     color: Colors.green,
          //   ),
          // ),
        ],
      ),
    );
  }
}
