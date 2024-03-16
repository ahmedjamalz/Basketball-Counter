import 'package:flutter/material.dart';

void main() {
  runApp(BasketballCounter());
}

class BasketballCounter extends StatefulWidget {
  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(fontSize: 200),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  width: 100,
                  child: VerticalDivider(
                    color: const Color(0xFFE2E2E2),
                    indent: 10,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(fontSize: 200),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 35,
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamBPoints = 0;
                    teamAPoints = 0;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
