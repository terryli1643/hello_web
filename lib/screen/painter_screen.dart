import 'package:flutter/material.dart';

class PainterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Center(
        child: Text("painter"),
      ),
    );
  }
}
