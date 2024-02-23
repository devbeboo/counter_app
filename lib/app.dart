import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$teamAPoints",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          //fixedSize: Size(100  , 50)
                          minimumSize: Size(160, 60)),
                      onPressed: () {

                        setState(() {
                          teamAPoints++;

                        });

                      },
                      child: Text(
                        "Add 1 Points",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          //fixedSize: Size(100  , 50)
                          minimumSize: Size(160, 60)),
                      onPressed: () {
                        setState(() {
                          teamAPoints+=2;

                        });
                      },
                      child: Text(
                        "Add 2 Points",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          //fixedSize: Size(100  , 50)
                          minimumSize: Size(160, 60)),
                      onPressed: () {setState(() {
                        teamAPoints+=3;

                      });},
                      child: Text(
                        "Add 3 Points",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$teamBPoints",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          //fixedSize: Size(100  , 50)
                          minimumSize: Size(160, 60)),
                      onPressed: () {teamBPoints++;setState(() {

                      });},
                      child: Text(
                        "Add 1 Points",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          //fixedSize: Size(100  , 50)
                          minimumSize: Size(160, 60)),
                      onPressed: () {setState(() {
                        teamBPoints+=2;

                      });},
                      child: Text(
                        "Add 2 Points",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          //fixedSize: Size(100  , 50)
                          minimumSize: Size(160, 60)),
                      onPressed: () {setState(() {
                        teamBPoints+=3;

                      });},
                      child: Text(
                        "Add 3 Points",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  //fixedSize: Size(100  , 50)
                  minimumSize: Size(160, 60)),
              onPressed: () {
                teamAPoints=0;
                teamBPoints=0;setState(() {

                });
              },
              child: Text(
                "Reset Counter",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
