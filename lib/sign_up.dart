import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MySignUpState createState() => _MySignUpState();
}

class _MySignUpState extends State<SignUp> {
  TextStyle style = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20.0,
    color: const Color(0xff2b2d5c),
  );

  @override
  Widget build(BuildContext context) {

    final usernameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Username',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final passwordField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final categoryField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Category',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final locationField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Location',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final logInButton = Material(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27.0),
          gradient: LinearGradient(
            begin: Alignment(-0.22, -0.66),
            end: Alignment(0.12, 2.57),
            colors: [const Color(0xffff5858), const Color(0xfff0b619)],
            stops: [0.0, 2.0],
          ),
        ),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
          onPressed: () {},
          child: Text(
            "SIGN UP",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Colors.white),
          ),
        ),
      ),
    );

    final welcomeHeader = Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Welcome\n   Vartista!',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 33,
                color: const Color(0xff2b2d5c),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'assets/cave_logo.jpeg',
              height: 100.0,
              width: 100.0,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                welcomeHeader,
                SizedBox(height: 25.0),
                Text(
                  'We\'re excited to see you join us',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16.0,
                    color: const Color(0xff2b2d5c),
                  ),
                ),
                SizedBox(height: 50.0),
                usernameField,
                SizedBox(height: 15.0),
                emailField,
                SizedBox(height: 15.0),
                passwordField,
                SizedBox(height: 15.0),
                categoryField,
                SizedBox(height: 15.0),
                locationField,
                SizedBox(
                  height: 25.0,
                ),
                logInButton,
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Already have an account?',
                        //style: TextStyle(color: Color(0x9596dd)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 20.0,
                        top: 15.0,
                      ),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
