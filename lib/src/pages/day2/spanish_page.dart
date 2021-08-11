import 'package:challenges/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SpanishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Spanish course'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20.0, top: 15.0),
            child: FaIcon(FontAwesomeIcons.ellipsisV),
          ),
        ],
        backgroundColor: Colors.orangeAccent,
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Header(),
          Container(
            margin: EdgeInsets.all(25.0),
            // color: Colors.redAccent,
            width: size.width,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Spanish',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Container(
                            width: 100.0,
                            child: Text(
                              'Begineer    +',
                              style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50.0),
                          child: CustomPaint(
                            painter: CirclePainter(radio: 50.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 180.0,
                  // color: Colors.redAccent,
                  child: Row(
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.medal, color: Colors.white),
                      SizedBox(width: 10.0),
                      FaIcon(FontAwesomeIcons.medal, color: Colors.white),
                      SizedBox(width: 50.0),
                      Text(
                        '2 Medals',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MiniCardDay2(
                      size: size,
                      icon: FaIcon(
                        FontAwesomeIcons.solidFileAlt,
                        color: Colors.orangeAccent,
                      ),
                      name: 'Basics',
                      progress: 45,
                    ),
                    MiniCardDay2(
                      size: size,
                      icon: FaIcon(
                        FontAwesomeIcons.briefcase,
                        color: Colors.pinkAccent,
                      ),
                      name: 'Ocupations',
                      progress: 87,
                      color: Colors.pinkAccent,
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: MiniCardDay2(
                        size: size,
                        icon: FaIcon(
                          FontAwesomeIcons.commentDots,
                          color: Colors.blue,
                        ),
                        name: 'Conversation',
                        progress: 15,
                        color: Colors.blue,
                      ),
                      onTap: () =>
                          Navigator.pushNamed(context, 'conversation_page'),
                    ),
                    MiniCardDay2(
                      size: size,
                      icon: FaIcon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: Colors.lightGreen,
                      ),
                      name: 'Places',
                      progress: 100,
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MiniCardDay2(
                      size: size,
                      icon: FaIcon(
                        FontAwesomeIcons.users,
                        color: Colors.purpleAccent,
                      ),
                      name: 'Family members',
                      progress: 35,
                      color: Colors.purpleAccent,
                    ),
                    MiniCardDay2(
                      size: size,
                      icon: FaIcon(
                        FontAwesomeIcons.pizzaSlice,
                        color: Colors.redAccent,
                      ),
                      name: 'Foods',
                      progress: 90,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
