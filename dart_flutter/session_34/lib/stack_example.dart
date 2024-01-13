import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Positioned(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
