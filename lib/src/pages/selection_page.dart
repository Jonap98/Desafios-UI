import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            children: [
              OptionButton(text: 'Wallet', page: 'wallet_page', size: size),
              OptionButton(
                  text: 'Boletos de autobus', page: 'initial_page', size: size),
              OptionButton(
                  text: 'English Room',
                  page: 'initial_page_languages',
                  size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  String page;
  String text;

  OptionButton({
    Key? key,
    required this.page,
    required this.text,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: size.width * 0.70,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, page),
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: Colors.pinkAccent,
          // shape: StadiumBorder(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
