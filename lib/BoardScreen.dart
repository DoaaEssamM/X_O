import 'package:flutter/material.dart';
import 'package:practice/BoarderButton.dart';

class BoardScreen extends StatefulWidget {
  static const String routeName = 'Board';

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  List<String> boardState = [
    '','','',
    '','','',
    '','',''
  ];
  int player1Score=0;
  int player2Score=0;
  @override
  void onPlayerClick(int buttonIndex){
    int counter=0;
    if(boardState[buttonIndex].isNotEmpty)return;
    print('button click $buttonIndex');
    if(counter%2==0){
      boardState[buttonIndex]='X';
      player1Score++;
    } else{
      boardState[buttonIndex]='O';
      player2Score++;
    }
    counter++;
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('X-O Game'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Player 1 (X)',
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pink),
                      ),
                      Text(
                        'score: $player1Score',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Player 2 (O)',
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
                      ),
                      Text(
                        'score: $player2Score',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoarderButton(boardState[0],onPlayerClick,0),
                  BoarderButton(boardState[1],onPlayerClick,1),
                  BoarderButton(boardState[2],onPlayerClick,2),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoarderButton(boardState[3],onPlayerClick,3),
                  BoarderButton(boardState[4],onPlayerClick,4),
                  BoarderButton(boardState[5],onPlayerClick,5),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  BoarderButton(boardState[6],onPlayerClick,6),
                  BoarderButton(boardState[7],onPlayerClick,7),
                  BoarderButton(boardState[8],onPlayerClick,8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
