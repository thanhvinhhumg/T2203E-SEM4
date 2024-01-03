import 'package:dart/animal.dart';

class Dog extends Animal {
  String? eyeColor;
  Dog({this.eyeColor, String? color, int? length}) : super(length: length, color: color);

  @override
  String toString() {
    // TODO: implement toString
    return "${super.toString()},  eyeColor:  $eyeColor";
  }



}