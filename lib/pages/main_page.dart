import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  @override
  var _passwordVisible;
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    String? _password;
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/l1.png",
            fit: BoxFit.cover,
            width: 250.0,
            height: 200.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 23.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('hello login click hua');
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: const Text('Admin Login'),
                  style: TextButton.styleFrom(minimumSize: Size(25, 30)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('hello login click hua');
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: Text('Operator Login'),
                  style: TextButton.styleFrom(minimumSize: Size(25, 30)),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
