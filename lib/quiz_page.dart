import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/constants/constants.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/screens/result_screen.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({super.key});

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  int questionIndex = 0;
  bool isFinalAnswerSubmited = false;

  Questions? questions;
  int corentAnswer = 0;

  @override
  Widget build(BuildContext context) {
    questions = questionsMoel()[questionIndex];
    String questionImage = questions!.imageName!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title:
            Text('سوال ${questionIndex + 1}' + ' از ${questionsMoel().length}'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImage.png'),
              height: 250,
            ),
            SizedBox(height: 30),
            Text(
              questionsMoel()[questionIndex].questionTitle!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ...List.generate(4, (index) => getOptionItems(index)),
            if (isFinalAnswerSubmited)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => ResultPage(
                            corentAnswer: corentAnswer,
                          )),
                    ),
                  );
                },
                child: Text(
                  'مشاهده نتیجه کوییز',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.red[700],
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget getOptionItems(int index) {
    return ListTile(
      title: Text(
        questions!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: (() {
        if (questionIndex == questionsMoel().length - 1) {
          isFinalAnswerSubmited = true;
        }
        if (questions!.correctAnswer == index) {
          print('true');
          corentAnswer++;
        } else
          (print('false'));
        setState(
          () {
            if (questionIndex < questionsMoel().length - 1) {
              questionIndex++;
            }
          },
        );
      }),
    );
  }
}
