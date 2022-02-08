import 'package:flutter/material.dart';

import 'Screens/MyHomePage.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,

      // ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
