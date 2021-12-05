import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Username", hintText: 'Enter your username here'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password", hintText: 'Enter your password here'),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                print('button pressed');
              },
              child: Text('Login'),
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
