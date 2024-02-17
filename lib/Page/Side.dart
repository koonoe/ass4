import 'package:flutter/material.dart';

class Side extends StatefulWidget {
  const Side({super.key});

  @override
  State<Side> createState() => _SideState();
}

class _SideState extends State<Side> {
  Widget _buildDot(int value) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value > 0
              ? Color.fromARGB(255, 177, 101, 13)
              : Color.fromARGB(255, 41, 39, 38)),
    );
  }

  Widget _buildRow(List<int> dotList) {
    List<Widget> wp = [];
    for (int i = 0; i < dotList.length; i++) {
      Widget w = _buildDot(dotList[i]);
      wp.add(w);
    }
    return Row(
      children: wp,
    );
  }

  Widget _buildDigit(List<List<int>> rowList) {
    List<Widget> wp = [];
    for (int i = 0; i < rowList.length; i++) {
      Widget w = _buildRow(rowList[i]);
      wp.add(w);
    }
    return Column(
      children: wp,
    );
  }

  Widget _buildDisplay(String value) {
    int f = int.parse(value.substring(0, 1));
    int s = int.parse(value.substring(1));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                width: 10,
                color: Colors.white,
              )),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildDigit(
                    dotsData[f],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildDigit(dotsData[s]),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  String p = '00';
  List<List<List<int>>> dotsData = [
    // Digit 0
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 1
    [
      [0, 0, 1, 0, 0],
      [0, 1, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
    ],
    // Digit 2
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [1, 1, 1, 1, 1],
    ],
    // Digit 3
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 4
    [
      [0, 0, 0, 1, 0],
      [0, 0, 1, 1, 0],
      [0, 1, 0, 1, 0],
      [1, 0, 0, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 1, 0],
    ],
    // Digit 5
    [
      [1, 1, 1, 1, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 6
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 7
    [
      [1, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
    ],
    // Digit 8
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 9
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ]
  ];
  Widget _arrowUp() {
    return ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(shape: CircleBorder())),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (p != '99') {
                int cur = int.parse(p);
                cur++;
                p = cur.toString().padLeft(2, '0');
              } else {
                p = '00';
              }
            });
          },
          child: const Icon(Icons.arrow_drop_up, size: 80, color: Colors.black),
        ));
  }

  Widget _arrowDown() {
    return ElevatedButtonTheme(
        data: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(shape: CircleBorder())),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (p != '00') {
                int cur = int.parse(p);
                cur--;
                p = cur.toString().padLeft(2, '0');
              } else {
                p = '99';
              }
            });
          },
          child: const Icon(
            Icons.arrow_drop_down,
            size: 80,
            color: Colors.black,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_arrowUp(), _buildDisplay(p), _arrowDown()],
        ),
      ),
    );
  }
}
