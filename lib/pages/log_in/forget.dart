import 'FirstRoute.dart';
import 'package:flutter/material.dart';


class Forget extends StatelessWidget {
  const Forget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forget Password',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink,
            centerTitle: true,
            title: const Text('Forget Password')),
        body: const ForgotPassword(),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key key}) : super(key: key);
  @override
  State<ForgotPassword> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: ListView(children: <Widget>[
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Enter a strong password please',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            )),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController1,
            cursorColor: Colors.purple,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.purple)),
              labelText: 'Password',
              icon: Icon(Icons.lock,color: Colors.pinkAccent,),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController2,
            cursorColor: Colors.purple,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.purple)),
              labelText: 'Enter your password again',
              icon: Icon(Icons.lock,color: Colors.pinkAccent,),
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        // This button is used to crease the number
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purpleAccent,
              ),
              onPressed: () {
                const snackBar = SnackBar(
                  content:
                  Text('Password does not match, please re-enter again'),
                  backgroundColor: Colors.purpleAccent,
                  behavior: SnackBarBehavior.floating,
                  width: 350,
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                passwordController1.clear();
                passwordController2.clear();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstRoute()),
                );
              },
              child: const Text('Submit',style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
            )
        ),
      ]),
    );
  }
}
