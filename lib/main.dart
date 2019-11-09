import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macathon_project/auth.dart';
import 'package:macathon_project/ui/auth_page.dart';
import 'package:macathon_project/ui/contact_page.dart';
import 'package:macathon_project/ui/log_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        builder: (context) => AuthBloc(),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Initializing) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is AuthInProgress) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is Authenticated) {
              return LogPage();
            }

            if (state is NotAuthenticated) {
              return AuthPage();
            }

            return AuthPage();
          },
        ),
      ),
    );
  }
}
