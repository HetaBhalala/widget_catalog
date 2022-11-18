import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        body: Container(
            child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Email?',
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              // validator: Validators.compose([
              //   Validators.required('Password is required'),
              //   Validators.patternString(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$', 'Invalid Password')
              // ]),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Password?',
                labelText: 'Password',
              ),
              maxLength: 8,
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  RegExp passwordRegex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  RegExp emailRegex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (!emailRegex.hasMatch(emailController.text)) {
                    print("Please enter valid Email Address");
                  } else if (passwordController.text.isEmpty) {
                    print("Enter Password");
                  } else if (!passwordRegex.hasMatch(passwordController.text)) {
                  } else {
                    print(emailController.text);
                    print(passwordController.text);
                  }

                  //  else if (!regex.hasMatch(passwordController.text)) {
                  //   print("Please enter valid password");
                },
                child: Text("Login"))
          ],
        )));
  }
}

class Validators {
  static patternString(String s, String t) {}

  static compose(List list) {}

  static required(String s) {}
}
