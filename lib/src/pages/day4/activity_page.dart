import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff602d5a),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Weekly Activity',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    fontSize: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Day(day: 'Sun', number: '8'),
                  Day(day: 'Mon', number: '9'),
                  Day(day: 'Tue', number: '10'),
                  Day(day: 'Wed', number: '11'),
                  Day(day: 'Thu', number: '12', isSelected: true),
                  Day(day: 'Fri', number: '13'),
                  Day(day: 'Sat', number: '14'),
                ],
              ),
              Text(
                'Weekly Points',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Stack(
                children: [
                  Container(
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white54),
                  ),
                  Container(
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orangeAccent),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1780 pts',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2000 pts',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Exercise(
                imageName: 'escaladora.png',
                exercise: 'Climbing',
                duration: '30 min',
              ),
              Exercise(
                imageName: 'abdominales.png',
                exercise: 'Abs',
                duration: '15 x',
              ),
              Exercise(
                imageName: 'caminadora.png',
                exercise: 'Running',
                duration: '30 min',
              ),
              Exercise(
                imageName: 'lagartijas.png',
                exercise: 'Push Ups',
                duration: '15 x',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: FaIcon(FontAwesomeIcons.plus, size: 30.0),
        backgroundColor: Colors.orangeAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Exercise extends StatelessWidget {
  String imageName;
  String exercise;
  String duration;

  Exercise({
    required this.imageName,
    required this.exercise,
    required this.duration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image(image: AssetImage('assets/$imageName')),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20.0, right: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exercise, style: TextStyle(color: Colors.white54)),
                Text(
                  duration,
                  style: TextStyle(
                      color: Colors.orangeAccent,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Icon(Icons.timer, size: 30.0, color: Colors.white54),
          Icon(Icons.bookmark, size: 30.0, color: Colors.white54),
          FaIcon(FontAwesomeIcons.solidStar, color: Colors.white54),
        ],
      ),
    );
  }
}

class Day extends StatelessWidget {
  String day;
  String number;
  bool isSelected;

  Day({
    Key? key,
    required this.day,
    required this.number,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.orangeAccent,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                    offset: Offset(2.0, 5.0)),
              ],
            )
          : null,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Text(day, style: TextStyle(color: Colors.white54)),
          SizedBox(height: 5.0),
          Text(
            number,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
