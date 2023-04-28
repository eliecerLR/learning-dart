import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_app/src/widgets/Button.widget.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/main';
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void onLoginPressed() {
    print('Button login pressed');
    Navigator.pushNamed(context, '/login');
  }

  void onRegisterPressed() {
    print('Button register pressed');
    Navigator.pushNamed(context, '/register');
  }

  void onForgotPasswordPressed() {
    print('Button forgot pressed');
    Navigator.pushNamed(context, '/forgot-password');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/fire.png', height: 80.0),
                  Text('Fire Talk',
                      style: GoogleFonts.pacifico(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xfffc4f4f),
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                width: 70,
                child: Text(
                    'Talk to as many people as you can to go crazy with love... or with loneliness because you talk to yourself',
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Button(20, const Color(0xfff76e11), 10, onLoginPressed,
                        'Login', Colors.white, const Color(0xfff76e11), 6, 14),
                    Button(
                        20,
                        Colors.white,
                        10,
                        onRegisterPressed,
                        'Register',
                        const Color(0xfff76e11),
                        const Color(0xfff76e11),
                        6,
                        14),
                    Button(
                        20,
                        Colors.transparent,
                        10,
                        onForgotPasswordPressed,
                        'Did you forgot your password?',
                        const Color(0xfff76e11),
                        Colors.transparent,
                        0,
                        12)
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
