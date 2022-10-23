import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        title: Text('کوییز کویین'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => QuizzPage()));
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 40),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo[700]),
            )
          ],
        ),
      ),
    );
  }
}
