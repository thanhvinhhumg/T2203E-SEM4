import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {

  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  String _message = "";
  int? _value =  1;
  bool? _ch1 = false;
  bool? _ch2  = true;
  // {"value":"lua chon 1", "isChecked":false}



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  // The validator receives the text that the user has entered.
                  controller: _userNameController,
                  decoration: InputDecoration(
                    hintText: "Input your name"
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  // The validator receives the text that the user has entered.
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: "Input your password"
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Text( _message),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }
                    ),
                    Text("value 1"),
                    Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }
                    ),
                    Text("value 1"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _ch1,
                        onChanged: (value) {
                          setState(() {
                            _ch1 = value;
                          });
                        }
                    ),
                    Text("checkbox 1"),
                    Checkbox(
                        value: _ch2,
                        onChanged: (value) {
                          setState(() {
                            _ch2 = value;
                          });
                        }
                    ),
                    Text("checkbox 2"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        String name = _userNameController.text;
                        String pass = _passwordController.text;
                        if (name != "admin" || pass != "admin") {
                          setState(() {
                            _message = "username or password not correct";
                          });
                        } else {
                          setState(() {
                            _message = "";
                          });
                        }
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
