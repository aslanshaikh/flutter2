import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 69;
    final String name = 'login success';
    return Scaffold(
      appBar: AppBar(
        title: const Text('catalog app'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('welcome $name ji'),
        ),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.black,
        child: Text("home"),
      ),
    );
  }
}
