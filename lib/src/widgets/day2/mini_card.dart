import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MiniCardDay2 extends StatelessWidget {
  final Size size;
  final FaIcon icon;
  final String name;
  final int progress;
  final Color color;

  const MiniCardDay2({
    required this.size,
    required this.icon,
    required this.name,
    required this.progress,
    this.color = Colors.orangeAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.4,
      width: size.width * 0.4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 10.0),
            blurRadius: 5.0,
            spreadRadius: -5.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.white,
            child: icon,
            // child: FaIcon(
            //   FontAwesomeIcons.solidFileAlt,
            //   color: Colors.orangeAccent,
            // ),
          ),
          SizedBox(height: 10.0),
          Text('$name'),
          SizedBox(height: 5.0),
          Text('$progress %'),
          SizedBox(height: 10.0),
          Stack(
            children: [
              Container(
                width: size.width * 0.35,
                height: 5.0,
                color: Colors.black12,
              ),
              Container(
                width: (progress * (size.width * 0.35)) / 100,
                height: 5.0,
                color: color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
