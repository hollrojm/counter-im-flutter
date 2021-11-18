import 'package:counter_app/src/pages/counter_page.dart';
//import 'package:counter_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Counter',
        debugShowCheckedModeBanner: false,
        home: Center(
          //child: HomePage(),
          child: CounterPage(),
        ));
  }
}
