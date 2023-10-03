import 'package:app12/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: const Text(appTitle),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loginHost,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Text(
            loginText,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Authentication.instance.authenticate().then(
                (success) => {
                  if (success) {context.go("/details")}
                },
              );
        },
        label: const Text('Login'),
        icon: const Icon(Icons.login),
      ),
    );
  }
}
