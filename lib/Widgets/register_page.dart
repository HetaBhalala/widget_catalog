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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Name",
                  icon: Icon(Icons.drive_file_rename_outline_rounded),
                ),
                keyboardType: TextInputType.text,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              TextField(
                controller: phonenumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Phone Number",
                  icon: Icon(Icons.numbers),
                ),
                keyboardType: TextInputType.number,
                maxLength: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                  icon: Icon(Icons.email_sharp),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Password",
                    icon: Icon(Icons.password)),
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 20),
              TextField(
                controller: confirmpasswordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Confirm Password",
                    icon: Icon(Icons.password)),
                keyboardType: TextInputType.name,
              ),
              ElevatedButton(
                  onPressed: () {
                    RegExp passwordRegex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    var emailRegex = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                    if (nameController.text.isEmpty) {
                      print("Please enter Name.");
                    } else if (phonenumberController.text.isEmpty) {
                      print("Please enter Phone Number.");
                    } else if (phonenumberController.text.length != 10) {
                      print("Please enter 10 digit number");
                    } else if (emailController.text.isEmpty) {
                      print("Please enetr emaill address.");
                    } else if (!emailRegex.hasMatch(emailController.text)) {
                      print("Please enter valid Email Address");
                    } else if (passwordController.text.isEmpty) {
                      print("Please Enter password.");
                    } else if (!passwordRegex
                        .hasMatch(passwordController.text)) {
                      print("Please enter Valid password.");
                    } else if (confirmpasswordController.text !=
                        passwordController.text) {
                      print("Confirm password must be same as password.");
                    } else {
                      print(nameController.text);
                      print(phonenumberController.text);
                      print(emailController.text);
                      print(passwordController.text);
                      print(confirmpasswordController.text);
                      Navigator.of(context).pop();
                    }
                    // else if(
                    // !regex.
                    // ){print("emailController.text");}
                  },
                  child: Text("Register"))
            ],
          ),
        ));
  }
}
