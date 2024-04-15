import 'dart:async';
import 'dart:convert';

import 'sign_up.dart';
import '../ConsultingApp/main.dart';

import 'forget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

var url = 'http://127.0.0.1:8000/api/login';

var _isUser = false;

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key key}) : super(key: key);
  static const String _title = 'Log in';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink,
            centerTitle: true,
            title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController1 = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  bool _isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Enter your Information',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w400,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController1,
                cursorColor: Colors.purple,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.purple)),
                  labelText: 'Email',
                  icon: Icon(Icons.edit, color: Colors.pinkAccent),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: !_isvisible,
                controller: passwordController1,
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple)),
                    labelText: 'Password',
                    icon: const Icon(Icons.lock, color: Colors.pinkAccent),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isvisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.pinkAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          _isvisible = !_isvisible;
                        });
                      },
                    )),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: content(),
            ),
            TextButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content:
                      Text('A reset code will be sent to your phone number'),
                  backgroundColor: Colors.purpleAccent,
                  behavior: SnackBarBehavior.floating,
                  width: 325,
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Timer(const Duration(seconds: 5), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Forget()));
                });
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 20, color: Colors.purpleAccent),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purpleAccent,
                  ),
                  onPressed: () async {

                    if (nameController1.text == '' || passwordController1.text == '') {
                      const snackBar = SnackBar(
                        content: Text(
                            'You need to fill in all fields before we can proceed'),
                        backgroundColor: Colors.purpleAccent,
                        behavior: SnackBarBehavior.floating,
                        width: 350,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    else if (nameController1.text != '' && passwordController1.text != '') {
                      var response = await http.post(Uri.parse(url), body: {
                        "email": nameController1.text,
                        "password": passwordController1.text
                      });

                      print('Response status: ${response.statusCode}');
                      print('Response body: ${response.body}');

                      if (response.statusCode == 200) {
                        if (_isUser) {
                          // ignore: use_build_context_synchronously
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MealApp()),
                          );
                        } else {
                          // ignore: use_build_context_synchronously
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MealApp()),
                          );
                        }
                      } else if (response.statusCode == 403) {
                        const snackBar = SnackBar(
                          content: Text(
                              'Check your email or password and try again'),
                          backgroundColor: Colors.purpleAccent,
                          behavior: SnackBarBehavior.floating,
                          width: 350,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    };
                  },
                  child: const Text('Login'),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20, color: Colors.purpleAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sign_up()),
                    );
                  },
                )
              ],
            ),
          ],
        ));
  }

  Container _buildSelect(
      {@required String text,
      @required Color background,
      @required Color textColor}) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75.0), color: background),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 25.0),
      )),
    );
  }

  Widget _buildGenderSelect(
      {@required String gender, @required bool selected}) {
    var button = selected
        ? _buildSelect(
            text: gender, textColor: Colors.black, background: Colors.white24)
        : _buildSelect(
            text: gender, textColor: Colors.black, background: Colors.purple);

    return GestureDetector(
        child: button,
        onTap: () {
          setState(() {
            _isUser = !_isUser;
          });
        });
  }

  Widget content() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildGenderSelect(gender: "A", selected: _isUser),
      _buildGenderSelect(gender: "U", selected: !_isUser),
    ]);
  }
}
