import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'NumberAudio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AudioCache audioPlayer= AudioCache();
  
  
  
  List numberList=[
    NumAudio("one.wav",Colors.amber,"1"),
    NumAudio("two.wav",Colors.red,"2"),
    NumAudio("three.wav",Colors.green,"3"),
    NumAudio("four.wav",Colors.blue,"4"),
    NumAudio("five.wav",Colors.pink,"5"),
    NumAudio("six.wav",Colors.brown,"6"),
    NumAudio("seven.wav",Colors.purple,"7"),
    NumAudio("eight.wav",Colors.cyan,"8"),
    NumAudio("nine.wav",Colors.deepOrange,"9"),
    NumAudio("ten.wav",Colors.grey,"10"),
  ];

  play(String uri){
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Numbers'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.0,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemCount: numberList.length,
                  itemBuilder: (context, i) => SizedBox(
                        width: 100.0,
                        height: 50.0,
                        child: RaisedButton(
                          color: numberList[i].buttonColor,
                          child: Text(
                            numberList[i].buttonText,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            play(numberList[i].audioUri);
                          },
                        ),
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}