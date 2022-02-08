import 'package:flutter/material.dart';
import 'package:quizapp/Widgets/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../Data/Quizdata.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Quizdata quizdata = Quizdata();
  List<Widget> checkAnswer = [];
  void checkQuestion(bool checkit) {
    if (quizdata.isFinished() == true) {
      Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
          buttons: [
            DialogButton(
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ]).show();
      checkAnswer = [];
      quizdata.reset();
    } else {
      if (quizdata.answer() == checkit) {
        checkAnswer.add(const Icon(Icons.check));
      } else {
        checkAnswer.add(const Icon(Icons.cancel));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  quizdata.getQuestion(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          CustomeCheckWdget(
            color: Colors.green,
            data: 'True',
            icon: Icons.check,
            onPressed: () {
              checkQuestion(true);
              setState(() {
                quizdata.nextQuestion();
              });
            },
          ),
          CustomeCheckWdget(
            color: Colors.red,
            data: 'False',
            icon: Icons.cancel,
            onPressed: () {
              checkQuestion(false);
              setState(() {
                quizdata.nextQuestion();
              });
              setState(() {
                quizdata.nextQuestion();
              });
            },
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: checkAnswer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
