import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, this.corentAnswer = 0});
  int corentAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        title: Text('نتایج بازی'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image(
              image: AssetImage('images/cup.png'),
            ),
          ),
          Text(
            'پاسخ های صحیح',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            '$corentAnswer',
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
