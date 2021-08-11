import 'package:flutter/material.dart';

class MiniCard extends StatelessWidget {
  final String text;
  final Color color;
  final String image;

  const MiniCard({
    this.text = 'Transport',
    this.color = Colors.lightBlueAccent,
    this.image = 'assets/Bus.png',
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 150.0,
      width: double.infinity,
      padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'metro_page'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Select',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              )),
        ],
      ),
    );
  }
}
