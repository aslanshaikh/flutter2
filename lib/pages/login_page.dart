import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  var _passwordVisible;
  void initState() {
    _passwordVisible = false;
  }

  String name = "";
  bool changeButton = false;

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
            height: 150.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Welcome $name ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 14.0, horizontal: 23.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "enter username",
                    labelText: "username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                // TextFormField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     hintText: "enter password",
                //     labelText: "password",
                //   ),
                //   validator: (val) =>
                //       val!.length < 6 ? 'Password too short.' : null,
                //   onSaved: (val) => _password = val,
                //   // obscureText: true,
                // ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  // controller: _userPasswordController,
                  obscureText:
                      !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     print('hello login click hua');
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: Text('Login'),
                //   style: TextButton.styleFrom(minimumSize: Size(25, 30)),
                // ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    width: changeButton ? 50.0 : 150,
                    height: 50.0,
                    // color: Colors.purple,
                    alignment: Alignment.center,

                    child: changeButton
                        ? Icon(Icons.done)
                        : Text(
                            'login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 68, 29, 75),
                      shape:
                          changeButton ? BoxShape.circle : BoxShape.rectangle,
                      //borderRadius:
                      // BorderRadius.circular(changeButton ? 20 : 7)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
