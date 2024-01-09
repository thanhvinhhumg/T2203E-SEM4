import 'package:flutter/material.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> student = ['Nguyen Van A','Nguyen Van B','Nguyen Van C','Nguyen Van D','Nguyen Van E'];
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: student.length,
              itemBuilder: (BuildContext context, index) {
                return Text(student[index]);
              }
          ),
        ),
      ),
    );
  }
}
