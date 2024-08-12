import 'package:flutter_application_1/model/customer.dart';
import 'package:riverpod/riverpod.dart';

class CustomerService {
  final Ref container;
  final List<Customer> _customers = [];

  CustomerService(this.container);

  void addCustomer(String name, String email) {
    final newCustomer = Customer(name, email);
    _customers.add(newCustomer);
    print('$name(Email: $email) has been added');

    void viewCustomers() {
      if (_customers.isEmpty) {
        print('No customers Available');
      } else {
        for (final customer in _customers) {
          print(customer);
        }
      }
    }
  }
}
