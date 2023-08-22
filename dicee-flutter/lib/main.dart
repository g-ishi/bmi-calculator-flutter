import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

// stateful widgetを使うことで状態を扱う事ができる。
class _DicePageState extends State<DicePage> {
  // 変数定義はここ
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  // class内の変数や関数を参照するときには、thisとかはいらないみたい。
  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.all(16.0)),
              // voidCallbackは、引数なし、返り値なしの関数のことを指す。
              onPressed: () {
                // stateを変更する際にはsetStateを使用することで、変更箇所をFlutterが特定できるようにする
                setState(() {
                  changeDiceNumber();
                });
                print('Left Button got pressed.');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(16.0),
              ),
              onPressed: () {
                setState(() {
                  changeDiceNumber();
                });
                print('Right Button got pressed.');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
