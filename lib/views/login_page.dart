import 'package:flutter/material.dart';
import 'package:flutter_app_experiment/views/home_page.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
          child: Column(
            children: <Widget>[
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Username *',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Username cannot be null';
              }
              if (!EmailValidator.validate(value)) {
                return 'Username should be in email format';
              }
              return null;
            },
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
          ),
          SizedBox(
            height: 32,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password *',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password cannot be null';
              }
              return null;
            },
            obscureText: true,
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(
            height: 32,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.all(0),
            ),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text(
                //       'Please wait...',
                //     ),
                //   ),
                // );
                //s
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                  (Route<dynamic> route) => false,
                );
              }
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
