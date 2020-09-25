import 'package:flutter/material.dart';
import 'package:hello_web/screen/clip_oval_screen.dart';
import 'package:hello_web/screen/home_screen.dart';
import 'package:hello_web/screen/layout_builder_screen.dart';
import 'package:hello_web/screen/painter_screen.dart';
import 'package:hello_web/screen/positioned_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MaterialApp(
        home: HomeScreen(),
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => PainterScreen(),
          '/layoutbuilder': (BuildContext context) => LayoutBuilderScreen(),
          '/ClipOval': (BuildContext context) => ClipOvalScreen(),
          '/Positioned': (BuildContext context) => PositionedScreen(),
        },
      ),
    );
  }
}

class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  // Add a "total" getter here:
  double get total => _prices.fold(0, (p, e) => p + e);
  // Add a "prices" setter here:
  set prices(List<double> value) {
    if (value.any((element) => element < 0)) {
      throw InvalidPriceException();
    }
    _prices = value;
  }
}
