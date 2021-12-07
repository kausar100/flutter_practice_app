import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/MyRoute.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  backToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homePage);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/login.png",
                  // fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome $name',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) return "username cannot be empty";
                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: 'Enter your username here'),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password cannot be empty";
                    } else if (value.length < 6) {
                      return "minimum password length should be 6";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: 'Enter your password here'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => backToHome(context),
                    splashColor: Colors.blue[900],
                    child: AnimatedContainer(
                      height: changedButton ? 50 : 50,
                      width: changedButton ? 50 : 150,
                      alignment: Alignment.center,
                      duration: const Duration(seconds: 1),
                      child: changedButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.green,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
