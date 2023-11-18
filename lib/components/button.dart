import 'package:flutter/material.dart';
import 'package:unihack2023/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'register_page.dart';


class MyButton extends StatelessWidget {
  //final Function()? onTap;
  final String text;
  final String email;
  final String password;
  const MyButton({super.key, required this.text, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[100],
          padding: const EdgeInsets.all(20),
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MyHomePage(title: 'WhaToDoIn'))
                );
              },
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}