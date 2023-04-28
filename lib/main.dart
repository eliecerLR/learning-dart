import 'package:first_app/src/screens/main/main_screen.dart';
import 'package:first_app/src/screens/login/login_screen.dart';
import 'package:first_app/src/screens/register/register_screen.dart';
import 'package:first_app/src/screens/forgot/forgotPassword_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          title: 'Firebase Chat App',
          home: MainScreen(),
          theme: ThemeData(
            textTheme: TextTheme(
              bodyLarge: TextStyle(fontSize: 18.0, color: Colors.black45),
              bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black45),
              bodySmall: TextStyle(fontSize: 12.0, color: Colors.black45),
            ),
          ),
          initialRoute: MainScreen.routeName,
          routes: <String, WidgetBuilder>{
            LoginScreen.routeName: (BuildContext context) => LoginScreen(),
            MainScreen.routeName: (BuildContext context) => MainScreen(),
            RegisterScreen.routeName: (BuildContext context) =>
                RegisterScreen(),
            ForgotPasswordScreen.routeName: (BuildContext context) =>
                ForgotPasswordScreen(),
          }),
    );
