import 'package:flutter/material.dart';
import 'package:session_34/student.dart';

class SecondPage extends StatefulWidget {

  String? message;
  static const String routeName = "/secondPage";

  SecondPage({super.key, this.message});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)?.settings.arguments as Student?;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Second page"),
            backgroundColor: Colors.blue,
            automaticallyImplyLeading: true,
          ),
          body: Column(
            children: [
              Text("This is second page", style: TextStyle(color: Colors.orange, fontSize: 40),),
              SizedBox(height: 20,),
              Text("Hello world", style: TextStyle(color: Colors.orange, fontSize: 40),),
              SizedBox(height: 200,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("Back to first page", style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.blue
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
