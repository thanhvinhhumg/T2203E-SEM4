import 'dart:convert';

import 'package:dart/model/customer.dart';
import 'package:dart/service/customer_service.dart';
import 'package:http/http.dart' as http;

class CustomerServiceImpl implements CustomerService {
  final String baseURL = "http://localhost:8080/api/v1/customer";


  @override
  Future<Customer> findCustomerById(int id) async {
    try {
      final response = await http.get(Uri.parse("$baseURL/getDetail/$id"));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return Customer.valueFromJson(data);
      }
    } catch(e) {
      print(e);
    }
    return Customer();
  }

  @override
  Future<List<Customer>> getAllCustomer() async {
    try {
      final response = await http.get(Uri.parse("$baseURL/getAll"));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        return data.map((item) => Customer.valueFromJson(item)).toList();
      }
    } catch(e) {
      print(e);
    }
    return <Customer>[];
  }

}