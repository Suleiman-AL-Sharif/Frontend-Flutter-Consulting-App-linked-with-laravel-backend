import 'FirstRoute.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

var url = 'http://127.0.0.1:8000/api/register';

TextEditingController _nameController = TextEditingController();
bool _isUser = false;

class Sign_up extends StatelessWidget {
  const Sign_up({Key key}) : super(key: key);

  static const String _title = 'ASQ_Consulting.com';

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
          body: MyFirstStatefulWidget(),
        ));
  }
}

class MyFirstStatefulWidget extends StatefulWidget {
  const MyFirstStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyFirstStatefulWidget> createState() => _MyFirstStatefulWidgetState();
}

class _MyFirstStatefulWidgetState extends State<MyFirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(70),
      child: ListView(children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Do you want to sign up like User or Advertiser ?',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            )),
        Container(
          padding: const EdgeInsets.all(50),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: content(),
        ),
        const Divider(),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purpleAccent,
              ),
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Sign_Up_Rout(),
                    ));
              },
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal),
              ),
            )),
      ]),
    );
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

class Sign_Up_Rout extends StatelessWidget {
  const Sign_Up_Rout({Key key}) : super(key: key);

  static const String _title = 'ASQ_Consulting.com';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.pink,
              centerTitle: true,
              title: Text(_title)),
          body: MyUserStatefulWidget(),
        ));
  }
}

class MyUserStatefulWidget extends StatefulWidget {
  const MyUserStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyUserStatefulWidget> createState() => _MyUserStatefulWidgetState();
}

class _MyUserStatefulWidgetState extends State<MyUserStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  bool _isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(50),
        child: ListView(
          shrinkWrap: true,
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
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  icon: Icon(Icons.edit, color: Colors.pinkAccent),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  icon: Icon(Icons.email, color: Colors.pinkAccent),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    icon: const Icon(
                      Icons.lock,
                      color: Colors.pinkAccent,
                    ),
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController2,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Configure Password',
                    icon: const Icon(
                      Icons.lock_clock,
                      color: Colors.pinkAccent,
                    ),
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
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  icon: Icon(Icons.phone, color: Colors.pinkAccent),
                ),
              ),
            ),
            const Divider(),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purpleAccent,
                  ),
                  onPressed: () async {
                    if (kDebugMode) {
                      print(nameController.text);
                      print(passwordController.text);
                      print(passwordController2.text);
                      print(emailController.text);
                      print(phoneController.text);
                    }

                    String A;
                    if(_isUser) A='0';
                    else A='1';

                    var response = await http.post(
                        Uri.parse(url),
                        body: {
                          "name": nameController.text,
                          "email": emailController.text,
                          "password": passwordController.text,
                          "password_confirmation": passwordController2.text,
                          "phone_n": phoneController.text,
                          "is_expirt": A
                        }
                    );
                    print('Response status: ${response.statusCode}');
                    print('Response body: ${response.body}');
                    print(A.toString());



                    if (nameController.text != '' &&
                        passwordController.text != '' &&
                        emailController.text != '' &&
                        phoneController.text != '' &&
                        response.statusCode==201) {
                      const snackBar = SnackBar(
                        content: Center(
                          heightFactor: 3,
                          child: Text(
                              'Your account has been created successfully'),
                        ),
                        backgroundColor: Colors.purpleAccent,
                        behavior: SnackBarBehavior.floating,
                        width: 350,
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      await Future.delayed(const Duration(seconds: 3), () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FirstRoute(),
                            ));
                      });
                    }

                    else if(nameController.text != '' &&
                        passwordController.text != '' &&
                        emailController.text != '' &&
                        phoneController.text != '' &&
                        response.statusCode!=201){
                      const snackBar = SnackBar(
                        content: Center(
                          heightFactor: 3,
                          child: Text('enter your information correctly'),
                        ),
                        backgroundColor: Colors.purpleAccent,
                        behavior: SnackBarBehavior.floating,
                        width: 350,
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    else {
                      const snackBar = SnackBar(
                        content: Center(
                          heightFactor: 3,
                          child: Text('You need to fill in all fields before we can proceed'),
                        ),
                        backgroundColor: Colors.purpleAccent,
                        behavior: SnackBarBehavior.floating,
                        width: 350,
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text(
                    'Create your account',
                    style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Log in now',
                    style: TextStyle(fontSize: 20, color: Colors.purpleAccent),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstRoute()));
                  },
                )
              ],
            ),
          ],
        ));
  }
}
