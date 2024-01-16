import 'package:flutter/material.dart';

class ReponsiveExample extends StatefulWidget {
  const ReponsiveExample({super.key});

  @override
  State<ReponsiveExample> createState() => _ReponsiveExampleState();
}

class _ReponsiveExampleState extends State<ReponsiveExample> {

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("with : $width, height: $height");

    int _count = 2;
    if (orientation == Orientation.landscape) {
      _count = 3;
    }

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Reponsive Layout"),
            backgroundColor: Colors.blue.withOpacity(0.6),
          ),
          body: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: _count,
            children: [
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.orange,
              ),

            ],
          )
        ),
      ),
    );
  }
}
