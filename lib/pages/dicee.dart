import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dicee/components/snackbar.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key key}) : super(key: key);

  @override
  DiceScreenState createState() => DiceScreenState();
}

class DiceScreenState extends State<DiceScreen> {
  String diceColor = 'w'; //white
  int diceLeft = 1;
  int diceRight = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Dicee',
                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'LoveYaLikeASister',
                    fontSize: 65.0),
              ),
              SizedBox(height: 15.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: TextButton(
                        onPressed: () {
                          rollDice();
                        },
                        child: Image.asset('assets/images/dice/' +
                            '$diceLeft' +
                            '$diceColor' +
                            '.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: TextButton(
                        onPressed: () {
                          rollDice();
                        },
                        child: Image.asset('assets/images/dice/' +
                            '$diceRight' +
                            '$diceColor' +
                            '.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void rollDice() {
    setState(
      () {
        diceLeft = Random().nextInt(6) + 1;
        diceRight = Random().nextInt(6) + 1;

        if (diceLeft == diceRight) {
          diceColor = 'b'; //black
          ScaffoldMessenger.of(context)
              .showSnackBar(snackBar('Nice dice :)', 'Dismiss'));
        } else {
          diceColor = 'w'; //white
        }
      },
    );
  }
}
