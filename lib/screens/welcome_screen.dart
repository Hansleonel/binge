import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.yellow[600],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'createAccount');
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                      padding: EdgeInsets.only(
                          left: 96, right: 96, top: 16, bottom: 16),
                      backgroundColor: Colors.deepOrange),
                  child: Text(
                    'CREA TU CUENTA',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 32.0,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                      padding: EdgeInsets.only(
                          left: 96, right: 96, top: 16, bottom: 16),
                      backgroundColor: Colors.teal[300]),
                  child: Text(
                    'INICIAR SESIÓN',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
