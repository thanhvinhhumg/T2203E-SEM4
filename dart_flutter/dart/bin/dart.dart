
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:dart/animal.dart';
import 'package:dart/dog.dart';
import 'package:dart/model/customer.dart';
import 'package:dart/service/customer_service.dart';
import 'package:dart/service/impl/customer_service_impl.dart';

void main (List<String> arguments) async {

  // var name = "T2203E"; // gan nam co data type  = string;
  // print("gia tri bien name: $name");
  // var a; // tuong duong dynamic
  // print("gia tri default var: $a");
  // a = 10;
  // print("gia tri bien a : $a");
  // a = "FPT Aptech";
  // print("gia tri a : $a");
  //
  // dynamic b;
  // print("gia tri default dynamic: $b");
  // b = 10;
  // b = "T2203E b6";
  // print("Gia tri b : $b");
  //
  // const c = 3.14;
  // final f = calculate();
  //
  // print("gia tri c : $c , gia tri f: $f");
  //
  // num n = 10;
  // n = 10.5;
  // print("gia tri cua n: $n");
  //
  // Object? o = {"key":"T2203E"};
  //
  // int? age;
  // print("gia tri cua age : $age");
  //
  //
  // //List<int> list = List.filled(2, 0);
  // List<int> list = [20, 10];
  // list.add(30);
  // for (int i in list) {
  //   print(i);
  // }
  //
  // Map<String, dynamic> map = HashMap();
  // map.putIfAbsent("key1", () => "Gia tri key 01");
  // map["key1"] = 200;
  // print("map : $map");
  // print("gia tri key 01 : ${map["key1"]}");
  // // print("gia tri key 02 : ${map["key2"]}");

  // Animal a1 = Animal("black", 1);
  // Animal a1 = Animal(length: 2, color: "black");
  // Animal a2 = Animal.constructorWithColor(color: "pink");
  // print(a1);
  // print("a2 : $a2");
  //
  // Dog d = Dog(eyeColor: "blue", color: "blue", length: 5);
  // print(d);

  // collection
  // var fixedList = List.filled(2, 0);
  // print("fixedList: $fixedList");
  // var list = [1,2,3];
  // var list1 = [4,5,6];
  // var list2 = list + list1;
  // print("list2:  $list2");
  // var list3 = [...list,...list1];
  // print("list3: $list3");
  // var list4 = [...list, for(var e in list1) e];
  // print("list4 : $list4");
  // // convert from list to map
  // var map1 = list4.asMap();
  // print("map1: $map1");
  // var map2 = {for(var e in list4) "key$e":"value$e"};
  // print("map2 : $map2");
  // bool check = (list is List);
  // print(check);

  // sync and async

  // asyncFunctionNotReturn(); //1
  // print(await asyncFunctionReturn()); //2
  // print("test success async function"); //3

  // call api
  CustomerService customerService = CustomerServiceImpl();
  List<Customer> customers = await customerService.getAllCustomer();
  print("customer: $customers");
  print(await customerService.findCustomerById(1));

}

  asyncFunctionNotReturn() {
  return Future.delayed(Duration(seconds: 4), () => print("async function"));
}

Future<String> asyncFunctionReturn() {
  return Future.delayed(Duration(seconds: 2), () => "async function return String");
}

int calculate() {
  return 6 * 7;
}