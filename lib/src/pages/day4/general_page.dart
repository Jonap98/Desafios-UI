import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GeneralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff602d5a),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, 'activity_page'),
            icon: Icon(Icons.date_range),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello\nJonaP 9.8',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'How are you doing?',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 20.0),
              Stats(primary: '3680', secondary: 'steps', icon: Icons.score),
              Stats(primary: '90', secondary: 'bpm', icon: Icons.favorite),
              Stats(
                  primary: '960',
                  secondary: 'calories',
                  icon: Icons.local_fire_department),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'GOOD',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        'Performance',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Text('|',
                      style: TextStyle(fontSize: 50.0, color: Colors.black26)),
                  SizedBox(width: 20.0),
                  FaIcon(FontAwesomeIcons.solidStar,
                      color: Colors.orangeAccent),
                  FaIcon(FontAwesomeIcons.solidStar,
                      color: Colors.orangeAccent),
                  FaIcon(FontAwesomeIcons.solidStar,
                      color: Colors.orangeAccent),
                  FaIcon(FontAwesomeIcons.solidStar,
                      color: Colors.orangeAccent),
                  FaIcon(FontAwesomeIcons.star, color: Colors.orangeAccent),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0.0,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home, size: 30.0, color: Colors.white24)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person, size: 30.0, color: Colors.white24)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.timer, size: 30.0, color: Colors.white24)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications,
                      size: 30.0, color: Colors.white24)),
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.settings, size: 30.0, color: Colors.white24)),
            ],
          ),
        ),
      ),
    );
  }
}

class Stats extends StatelessWidget {
  String primary;
  String secondary;
  IconData icon;

  Stats({
    Key? key,
    required this.primary,
    required this.secondary,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 80.0,
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  primary,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              Text(
                secondary,
                style: TextStyle(
                  // fontSize: 30.0,
                  color: Colors.black26,
                ),
              )
            ],
          ),
          Icon(Icons.leaderboard, color: Colors.orangeAccent),
          Icon(icon, color: Colors.orangeAccent),
        ],
      ),
    );
  }
}
