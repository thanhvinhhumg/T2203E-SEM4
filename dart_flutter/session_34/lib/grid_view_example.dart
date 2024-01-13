import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  const GridViewExample({super.key});

  @override
  State<GridViewExample> createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: GridView.count(
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing:  10,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
