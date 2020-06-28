import 'package:flutter/material.dart';
import 'package:grand_pool/screens/home/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the Grand Pool',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    //TODO: Make the login happen
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  elevation: 2.0,
                  height: 42.0,
                  color: Color(0xFF4285F4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        padding: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                            image: AssetImage(
                              'images/login/google_logo1.png',
                            ),
                            height: 38.0,
                          ),
                        ),
                      ),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Text(
                'Having trouble?',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
