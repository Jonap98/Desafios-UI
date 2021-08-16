import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff602d5a),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 200.0),
                height: 200.0,
                child: Image(image: AssetImage('assets/FlashGym.png')),
              ),
              ActionButton(
                text: 'Sign Up',
                color: Colors.orangeAccent,
              ),
              ActionButton(
                text: 'Login',
                color: Colors.white12,
              ),
              SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  String text;
  Color color;

  ActionButton({
    required this.text,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: StadiumBorder(),
        elevation: 0.0,
      ),
      onPressed: () => Navigator.pushNamed(context, 'general_page'),
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 100.0,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
