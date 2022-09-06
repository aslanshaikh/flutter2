import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/l1.png",
          fit: BoxFit.cover,
          width: 250.0,
          height: 150.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Welcome aslan ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 23.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "enter username",
                  labelText: "username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "enter password",
                  labelText: "password",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  print('hello login click hua');
                },
                child: Text('Login')
              ),
              
            ],
          ),
        )
      ],
    ));
  }
}
