import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          // return Scaffold();
          if (constraints.maxWidth <= 400) {
            return Scaffold(
              appBar: AppBar(
                leading: BackButton(),
              ),
              body:
                  Center(child: Text("LayoutBuilder ${constraints.maxWidth}")),
            );
          }
          return Scaffold(
            appBar: AppBar(
              leading: BackButton(),
            ),
            body: Center(child: Text("LayoutBuilder2 ${constraints.maxWidth}")),
          );
        },
      ),
    );
  }
}
