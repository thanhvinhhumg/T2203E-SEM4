import 'package:flutter/material.dart';
import 'package:session_34/future_builder.dart';
import 'package:session_34/main_page.dart';
import 'package:session_34/reponsive_example.dart';
import 'package:session_34/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: routes,
      home: FutureBuilderExample(),
    );
  }
}

