import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/MyRoute.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                decoration: const InputDecoration(
                    labelText: "Username",
                    hintText: 'Enter your username here'),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: 'Enter your password here'),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async{
                  setState(() {
                    changedButton = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoute.homePage);
                },
                child: AnimatedContainer(
                  height: changedButton ? 50 : 50,
                  width: changedButton ? 50 : 150,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
                    //shape: changedButton ? BoxShape.circle : BoxShape.rectangle,
                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
