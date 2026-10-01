import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
// TODO: There is no Modeling for Data to handle the state
// TODO: The State of model should controle the state of ui
// TODO: Ther ui code is very messy 
class _HomePageState extends State<HomePage> {
  List<String> answers = ["Damascus", "Aleppo", "Homs", "Hama"];
  int score = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(title: Text("What is the Capital City"),
          subtitle: Text(score.toString()),
          ),
          SizedBox(
            // ? use SizedBox Or Expanded when RenderViewPort error come with Column or Row
            height: 600,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 16/9
              ),
              children: [
                Center(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("True"),
                          backgroundColor: Colors.green,
                        ),
                      );
                      score++;
                      setState(() {
                        
                      });
                    },
                    child: Text(answers[0]),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("False"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    child: Text(answers[1])),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("False"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    child: Text(answers[2])),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("False"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    child: Text(answers[3])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
