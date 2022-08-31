import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool gameover = false;
  int n = 0;
  List<List<String>> grid = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""]
  ];
  String? stm;

  @override
  void initState() {
    // TODO: implement initState
    grid = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ];
    n = 0;
    gameover = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: gameover ? resultPage(stm) : gamePage()),
    );
  }

  Widget resultPage(String? stm) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$stm",
          style: TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                initState();
              });
            },
            child: Text("Reset"))
      ],
    );
  }

  Widget gamePage() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "Aa dekhe, kisme kitna hai dum 💪",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        firstRow(),
        secondRow(),
        thirtRow(),
      ],
    );
  }

  void check(int x, int y) {
    setState(() {
      if (grid[x][y] != "") return;
      if (n.isEven) {
        grid[x][y] = "X";
      } else {
        grid[x][y] = "O";
      }
      n++;

      // To check the logic
      if (n > 4) {
        checkresult();
      }
      if (n > 8) {
        checkresult();
        gameover = true;
        stm = "That's a Tie, Don't let the sprit die\nTry Again";
      }
    });
  }

  Widget firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => check(0, 0),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
                right: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
                child: Text(
              grid[0][0],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
        GestureDetector(
          onTap: () => check(0, 1),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  right: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  )),
            ),
            child: Center(
                child: Text(
              grid[0][1],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
        GestureDetector(
          onTap: () => check(0, 2),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
                child: Text(
              grid[0][2],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
      ],
    );
  }

  Widget secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => check(1, 0),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
                right: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
                child: Text(
              grid[1][0],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
        GestureDetector(
          onTap: () => check(1, 1),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  right: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  )),
            ),
            child: Center(
                child: Text(
              grid[1][1],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
        GestureDetector(
          onTap: () => check(1, 2),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
                child: Text(
              grid[1][2],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
      ],
    );
  }

  Widget thirtRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => check(2, 0),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                right: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
                child: Text(
              grid[2][0],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
        GestureDetector(
          onTap: () => check(2, 1),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                  right: BorderSide(
                color: Colors.white,
                width: 2.0,
              )),
            ),
            child: Center(
                child: Text(
              grid[2][1],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
        GestureDetector(
          onTap: () => check(2, 2),
          child: Container(
            height: 100.0,
            width: 100.0,
            decoration: const ShapeDecoration(
              shape: Border(
                  left: BorderSide(
                color: Colors.white,
                width: 0.0,
              )),
            ),
            child: Center(
                child: Text(
              grid[2][2],
              style: const TextStyle(fontSize: 22.0),
            )),
          ),
        ),
      ],
    );
  }

  void checkresult() {
    // For Horizontal
    if (grid[0][0] == grid[0][1] &&
        grid[0][0] == grid[0][2] &&
        grid[0][0] != "") {
      gameover = true;
      String winner = grid[0][0];
      stm = "The Winner of the Game is $winner";
    } else if (grid[1][0] == grid[1][1] &&
        grid[1][0] == grid[1][2] &&
        grid[1][1] != "") {
      gameover = true;
      String winner = grid[0][0];
      stm = "The Winner of the Game is $winner";
    } else if (grid[2][0] == grid[2][1] &&
        grid[2][0] == grid[2][2] &&
        grid[2][2] != "") {
      gameover = true;
      String winner = grid[0][0];
      stm = "The Winner of the Game is $winner";
    }
    // For vertical
    else if (grid[0][0] == grid[1][0] &&
        grid[0][0] == grid[2][0] &&
        grid[0][0] != "") {
      gameover = true;
      String winner = grid[0][0];
      stm = "The Winner of the Game is $winner";
    } else if (grid[0][1] == grid[1][1] &&
        grid[1][1] == grid[2][1] &&
        grid[1][1] != "") {
      gameover = true;
      String winner = grid[1][1];
      stm = "The Winner of the Game is $winner";
    } else if (grid[0][2] == grid[1][2] &&
        grid[1][2] == grid[2][2] &&
        grid[2][2] != "") {
      gameover = true;
      String winner = grid[2][2];
      stm = "The Winner of the Game is $winner";
    } else if (grid[0][0] == grid[1][1] &&
        grid[1][1] == grid[2][2] &&
        grid[2][2] != "") {
      gameover = true;
      String winner = grid[2][2];
      stm = "The Winner of the Game is $winner";
    } else if (grid[0][2] == grid[1][1] &&
        grid[1][1] == grid[2][0] &&
        grid[2][0] != "") {
      gameover = true;
      String winner = grid[1][1];
      stm = "The Winner of the Game is $winner";
    }
  }
}
