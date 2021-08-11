import 'package:challenges/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lesson'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20.0, top: 15.0),
            child: FaIcon(FontAwesomeIcons.ellipsisV),
          ),
        ],
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Header(color: Colors.lightBlue),
            Container(
              margin: EdgeInsets.all(25.0),
              // color: Colors.redAccent,
              width: size.width,
              height: size.height,
              child: Column(
                children: <Widget>[
                  Text(
                    'Translate these \nphrases to english',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    // padding: EdgeInsets.only(left: 50.0),
                    width: size.width,
                    height: size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 10.0),
                          blurRadius: 5.0,
                          spreadRadius: -5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: FaIcon(
                            FontAwesomeIcons.solidCommentAlt,
                            size: 50.0,
                            color: Colors.lightBlue,
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(left: 50.0),
                          child: Text(
                            'Hola, \n¿Qué tal estuvo la película?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, bottom: 5, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          offset: Offset(0, 5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: TextField(
                      autocorrect: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.question_answer,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
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
