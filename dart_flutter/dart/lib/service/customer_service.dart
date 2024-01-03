import 'package:dart/model/customer.dart';

abstract class CustomerService {
  Future<List<Customer>> getAllCustomer();
  Future<Customer> findCustomerById(int id);
}