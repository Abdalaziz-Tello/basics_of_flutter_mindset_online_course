import 'package:base_quiz_app/model/anwers_model.dart';
import 'package:base_quiz_app/model/question_model.dart';
import 'package:flutter/material.dart';

class CompleteQuizPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CompleteQuizPage> createState() => _CompleteQuizPageState();
}
// TODO: There is no Modeling for Data to handle the state
// TODO: The State of model should controle the state of ui

class _CompleteQuizPageState extends State<CompleteQuizPage> {
  List<AnwersModel> anwsers = [
    AnwersModel(is_correct: true, words: "Damascus", score: 10),
    AnwersModel(is_correct: true, words: "Aleppo", score: 5),
    AnwersModel(is_correct: false, words: "Hama", score: -5),
    AnwersModel(is_correct: false, words: "Hams", score: 0),
  ];

 late List<QuestionModel> questionModel;


@override
  void initState() {
    questionModel = [QuestionModel(answers: anwsers, questionWord: "What is the Oldest City ? "),
    QuestionModel(answers: anwsers, questionWord: "What is the Oldest City ? "),
    QuestionModel(answers: anwsers, questionWord: "What is the Oldest City ? "),
    QuestionModel(answers: anwsers, questionWord: "What is the Oldest City ? "),QuestionModel(answers: anwsers, questionWord: "What is the Oldest City ? ")];
  }

  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount:questionModel.length ,
        itemBuilder:
        (context, index) => Column(
        children: [
          ListTile(
            title: Text(questionModel[index].questionWord),
            subtitle: Text(score.toString()),
          ),
          SizedBox(
            // ? use SizedBox Or Expanded when RenderViewPort error come with Column or Row
            height: 600,
            child: GridView.builder(
              itemCount: questionModel[index].answers.length,
              itemBuilder: (context, index) => Center(
                child: InkWell(
                  onTap: () {
                    // ? if index == 0 show the green
                    // ? if asnwers[index] == Damascus show the green
                    // ? I should think again about my Data Srtucture
                    if (questionModel[index].answers[index].is_correct) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("True"),
                          backgroundColor: Colors.green,
                        ),
                      );
                      score = score + questionModel[index].answers[index].score;
                      setState(() {});
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("False"),
                          backgroundColor: Colors.red,
                        ),
                      );
                      score = score +questionModel[index].answers[index].score;
                      setState(() {});
                    }
                  },
                  child: Text(questionModel[index].answers[index].words),
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 16 / 9,
              ),
            ),
          ),
        ],
      ),
         )
    );
  }
}
