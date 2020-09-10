import 'package:flutter/material.dart';
import 'package:radiante1_app/UI/login/widgets/login_body.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: LoginBody(),
    )
    );
  }
}
