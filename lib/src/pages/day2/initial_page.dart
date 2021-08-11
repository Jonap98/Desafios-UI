import 'package:challenges/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InitialPageLanguages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'English Room',
          style: TextStyle(color: Colors.black54),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15.0, top: 15.0),
            child: FaIcon(
              FontAwesomeIcons.language,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 70.0,
              width: double.infinity,
              margin: EdgeInsets.only(left: 25.0, top: 25.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    child: Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Jona2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Jonathan Pérez',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: <Widget>[
                            FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              size: 15.0,
                            ),
                            Text(
                              '  Saltillo, Coahuila',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 250.0,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 5.0,
                    spreadRadius: -5.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage('assets/Teaching.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Your courses',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 150.0,
              width: double.infinity,
              margin: EdgeInsets.only(left: 25.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'spanish_page'),
                    child: SelectorCard(
                      language: 'Spanish',
                      color: Colors.orangeAccent,
                      progress: 20,
                    ),
                  ),
                  SelectorCard(
                    language: 'Italian',
                    color: Colors.pinkAccent,
                    progress: 47,
                  ),
                  SelectorCard(
                    language: 'Corean',
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectorCard extends StatelessWidget {
  final String language;
  final Color color;
  final int progress;

  const SelectorCard({
    required this.language,
    required this.color,
    this.progress = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 160,
      margin: EdgeInsets.only(right: 10.0),
      padding:
          EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$language',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            'Begginer',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 50.0,
                width: 50.0,
                margin: EdgeInsets.only(right: 10.0),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                      child: CustomPaint(
                        painter: CirclePainter(),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Text(
                          '$progress %',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
