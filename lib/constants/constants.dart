import 'package:quizz_app/data/question.dart';

List<Questions> questionsMoel() {
  var firstQuestion = Questions();
  firstQuestion.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageName = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'محمدجواد بیدرام',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Questions();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageName = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  return [firstQuestion, secondQuestion];
}
