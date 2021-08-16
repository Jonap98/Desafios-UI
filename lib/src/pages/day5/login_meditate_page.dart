import 'package:flutter/material.dart';

class LoginMeditatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(0.0),
            width: double.infinity,
            // height: double.infinity,
            child: Image(
              image: AssetImage('assets/bg-1.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.70,
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            // color: Color(0xff8cac1c),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
                SizedBox(height: 100.0),
                Text(
                  'MEDITATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Meditation App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'Non ad dolore id eu laborum incididunt adipisicing dolor consequat cillum. Tempor aute incididunt ipsum quis amet cillum fugiat. Officia reprehenderit sit qui cillum duis pariatur exercitation dolor ut cillum voluptate pariatur.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Card(size: size),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        height: size.height * 0.37,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Column(
          children: [
            CustomTextField(text: 'Email', icon: Icons.mail),
            SizedBox(height: 15.0),
            CustomTextField(text: 'Password', icon: Icons.lock),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.pushNamed(context, 'initial_meditate_page');
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xffff9400),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: size.width / 3,
                  vertical: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String text;
  IconData icon;

  CustomTextField({
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(top: 5, left: 30, bottom: 5, right: 20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        cursorColor: Color(0xffff9400),
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
          ),
          border: InputBorder.none,
          hintText: text,
        ),
      ),
    );
  }
}
