import 'package:flutter/material.dart';
import 'package:social_ui/screen/home_screen.dart';
import 'package:social_ui/widgets/curve_clip.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: CurveClipper(),
                child: Image(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  height: MediaQuery.of(context).size.height / 2.5,
                  image: AssetImage(
                    'assets/images/login_background.jpg',
                  ),
                ),
              ),
              Text(
                'FRENZY',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'UserName',
                    prefixIcon: Icon(
                      Icons.account_box,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  height: 45.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () => print('signup'),
                    child: Container(
                      alignment: Alignment.center,
                      color: Theme.of(context).primaryColor,
                      height: 60.0,
                      child: Text(
                        'Don\'t have an account? Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
