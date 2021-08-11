import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:challenges/src/widgets/widgets.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0.0),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(20.0),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // SizedBox(height: 10.0),
                      Text(
                        'Hello, \nJona Pérez',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        '¿A donde vas a ir?',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -50.0,
              left: 0.0,
              right: 0.0,
              child: Footer(
                // padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 120.0),
                child: _Content(),
              ),
            ),
            Positioned(
              top: 150.0,
              left: 0.0,
              right: 0.0,
              child: PricesCard(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Elige tu transporte',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: 20.0),
        MiniCard(),
        SizedBox(height: 20.0),
        MiniCard(
          color: Colors.lightBlue,
          text: 'MTR',
          image: 'assets/Metro.png',
        ),
      ],
    );
  }
}

class PricesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle style1 = TextStyle(fontWeight: FontWeight.bold);
    final TextStyle style2 =
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

    return Container(
      height: 120.0,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 10),
            blurRadius: 10,
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('Saldo actual', style: style1),
                SizedBox(height: 10.0),
                Text('\$18', style: style2),
              ],
            ),
            Column(
              children: <Widget>[
                Text('Recompensas', style: style1),
                SizedBox(height: 10.0),
                Text('\$10.25', style: style2),
              ],
            ),
            Column(
              children: <Widget>[
                Text('Viajes totales', style: style1),
                SizedBox(height: 10.0),
                Text('\$189', style: style2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.userAlt),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.mapMarkerAlt),
          label: '',
        ),
      ],
    );
  }
}
