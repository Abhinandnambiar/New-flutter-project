import 'package:flutter/material.dart';
import 'package:flutterassignment/first_page.dart';
import 'first_page.dart';

class LoginSecond extends StatefulWidget {
  const LoginSecond({Key? key}) : super(key: key);

  @override
  _LoginSecondState createState() => _LoginSecondState();
}

class _LoginSecondState extends State<LoginSecond> {
  bool chechBoxValue = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                  image: AssetImage('images/1_7iBUzC4UvwNi8agIsCrZ7w.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 15, left: 15),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Value is empty';
                        } else {
                          return null;
                        }
                      },
                      controller: _usernameController,
                      decoration: InputDecoration(
                        counterText: '10/20',
                        label: const Text('username'),
                        labelStyle: const TextStyle(color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Value is empty';
                        } else {
                          return null;
                        }
                      },
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text('password'),
                        labelStyle: const TextStyle(color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                          activeColor: Colors.blue,
                          value: chechBoxValue,
                          onChanged: (newValue) {
                            setState(() {
                              chechBoxValue = newValue!;
                            });
                          }),
                      const Text(
                        "Remember me",
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            checking(context);
                          } else {
                            return null;
                          }
                        },
                        child: const Text(
                          'LOG IN ',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Create an Account',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void checking(BuildContext context) {
    final _password = _passwordController.text;
    final _username = _usernameController.text;
    if (_username == _password) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const FirstPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            duration: Duration(seconds: 1),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            content: Text(
              'uername password does not match',
              style: TextStyle(color: Colors.white),
            )),
      );
    }
  }
}
