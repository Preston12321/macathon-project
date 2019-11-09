import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macathon_project/auth.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final key = GlobalKey<ScaffoldState>();
  int _currentForm = 0;

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      key: key,
      body: SafeArea(
        child: WillPopScope(
            onWillPop: () async {
              if (_currentForm == 0) {
                return true;
              }
              setState(() {
                _currentForm = 0;
              });
              return false;
            },
            child: Center(
              child: _currentForm == 1
                  ? AuthForm(createAccount: false)
                  : _currentForm == 2
                      ? AuthForm(createAccount: true)
                      : _buildAuthChooser(),
            )),
      ),
    );

    return scaffold;
  }

  Widget _buildAuthChooser() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("Sign in"),
          onPressed: () {
            setState(() {
              _currentForm = 1;
            });
          },
        ),
        RaisedButton(
          child: Text("Create Account"),
          onPressed: () {
            setState(() {
              _currentForm = 2;
            });
          },
        ),
      ],
    );
  }
}

class AuthForm extends StatefulWidget {
  final createAccount;

  AuthForm({@required this.createAccount});

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: _emailController,
          decoration: InputDecoration(labelText: "Email"),
        ),
        TextField(
          keyboardType: TextInputType.visiblePassword,
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(labelText: "Password"),
        ),
        RaisedButton(
          child: Text(widget.createAccount ? "Create account" : "Sign in"),
          onPressed: () {
            AuthEvent event;
            if (widget.createAccount) {
              event = AccountCreationRequested(
                email: _emailController.text,
                password: _passwordController.text,
              );
            } else {
              event = SignInRequested(
                email: _emailController.text,
                password: _passwordController.text,
              );
            }
            BlocProvider.of<AuthBloc>(context).dispatch(event);
          },
        )
      ],
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
