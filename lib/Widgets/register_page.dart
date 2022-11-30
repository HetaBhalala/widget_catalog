import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var nameController = TextEditingController();

  var phonenumberController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmpasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Name",
                  icon: Icon(Icons.drive_file_rename_outline_rounded),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter name";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.text,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              TextFormField(
                controller: phonenumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Phone Number",
                  icon: Icon(Icons.numbers),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Phone Number.";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                maxLength: 10,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                  icon: Icon(Icons.email_sharp),
                ),
                validator: (value) {
                  var emailRegex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (value!.isEmpty) {
                    return "Please enter Email Address";
                  } else if (!emailRegex.hasMatch(value)) {
                    return "Please enter Valid Email Address.";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Password",
                    icon: Icon(Icons.password)),
                keyboardType: TextInputType.name,
                validator: (value) {
                  RegExp passwordRegex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (value!.isEmpty) {
                    return "Please enter Password.";
                  } else if (!passwordRegex.hasMatch(value)) {
                    return "Please Enter valid Password.";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: confirmpasswordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Confirm Password",
                    icon: Icon(Icons.password)),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter Confirm Password.";
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(nameController.text);
                      print(phonenumberController.text);
                      print(emailController.text);
                      print(passwordController.text);
                      print(confirmpasswordController.text);
                      Navigator.of(context).pop();
                    }else{
                      showInSnackBar("Something went wrong");
                    }

                    // if (nameController.text.isEmpty) {
                    //   showInSnackBar("Please enter Name.");
                    //   print("Please enter Name.");
                    // } else if (phonenumberController.text.isEmpty) {
                    //   showInSnackBar("Please enter Phone Number.");
                    //   print("Please enter Phone Number.");
                    // } else if (phonenumberController.text.length != 10) {
                    //   showInSnackBar("Please enter 10 digit number");
                    //   print("Please enter 10 digit number");
                    // } else if (emailController.text.isEmpty) {
                    //   showInSnackBar("Please enter email address.");
                    //   print("Please enter email address.");
                    // } else if (!emailRegex.hasMatch(emailController.text)) {
                    //   showInSnackBar("Please enter valid Email Address");
                    //   print("Please enter valid Email Address");
                    // } else if (passwordController.text.isEmpty) {
                    //   showInSnackBar("Please Enter password.");
                    //   print("Please Enter password.");
                    // } else if (!passwordRegex.hasMatch(passwordController.text)) {
                    //   showInSnackBar("Please enter Valid password.");
                    //   print("Please enter Valid password.");
                    // } else if (confirmpasswordController.text !=
                    //     passwordController.text) {
                    //   showInSnackBar(
                    //       "Confirm password must be same as password.");
                    //   print("Confirm password must be same as password.");
                    // } else {
                    //   print(nameController.text);
                    //   print(phonenumberController.text);
                    //   print(emailController.text);
                    //   print(passwordController.text);
                    //   print(confirmpasswordController.text);
                    //   Navigator.of(context).pop();
                    // },
                    // else if(
                    // !regex.
                    // ){print("emailController.text");}
                  },
                  child: Text("Register"))
            ],
          ),
        ));
  }

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          value,
          style: TextStyle(color: Colors.black),
        ),
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(180)),
        backgroundColor: Colors.red,
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
