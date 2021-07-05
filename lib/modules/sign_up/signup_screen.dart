import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Color.fromRGBO(42, 36, 94, 1),
        ),
        elevation: 0,
        title: Text(
          'Criar conta',
          style: TextStyle(
            color: Color.fromRGBO(42, 36, 94, 1),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
