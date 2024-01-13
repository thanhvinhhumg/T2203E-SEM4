import 'package:flutter/material.dart';
import 'package:session_34/form_example.dart';
import 'package:session_34/second_page.dart';
import 'package:session_34/student.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Text("This is First page", style:TextStyle(fontSize: 40, color: Colors.red)),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.blue.withOpacity(0.6),
                  ),
                  child: Text("Go to second page", style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    print(SecondPage.routeName);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
                    Navigator.of(context).pushNamed(SecondPage.routeName, arguments: Student(name: "T2203E", address: "8 ton that thuyet", phone: "12345676543") );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
