import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:unihack2023/components/button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //text controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future LogIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            const Text('Hello Again!',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Welcome back, you\'ve been missed!',
              style: TextStyle(
              fontSize: 20,
              ),
            ),
            const Padding(padding: EdgeInsets.all(30)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(bottom: 5.0,left:10.0, right:10.0,top: 5.0),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[50],
                  border: Border.all(color: Colors.blue),
                ),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                ),
              ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(bottom: 5.0,left:10.0, right:10.0,top: 5.0),
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey[50],
                border: Border.all(color: Colors.blue),
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                ),
              ),
            ),
            const SizedBox(height: 30),

            //sing in button
            const MyButton( text: 'Sign In' ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?'),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Register now!',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}