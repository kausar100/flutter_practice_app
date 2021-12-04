import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              child: Icon(Icons.alarm, size: 20, color: Colors.grey,),
            ),
           
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Username", hintText: 'Enter your username here'),
            ),
          
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password", hintText: 'Enter your password here'),
            )
          ],
        ),
      ),
    );
  }
}
