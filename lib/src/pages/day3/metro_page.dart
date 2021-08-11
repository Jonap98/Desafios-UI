import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MetroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.lightBlueAccent,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'MRT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Image(
                      image: AssetImage('assets/Bus.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -50.0,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                FooterHorarios(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FooterHorarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle style1 = TextStyle(color: Colors.black38);
    final TextStyle style2 =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0);

    return Container(
      height: size.height * 0.65,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            padding: EdgeInsets.only(left: 30.0, top: 20.0),
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
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.mapMarkerAlt,
                        color: Colors.lightBlueAccent),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 2.0,
                      height: 30.0,
                      color: Colors.black12,
                    ),
                    FaIcon(FontAwesomeIcons.mapMarkerAlt,
                        color: Colors.lightBlue),
                  ],
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('From', style: style1),
                    SizedBox(height: 5.0),
                    Text('Estación UAdeC', style: style2),
                    SizedBox(height: 10.0),
                    Container(
                      height: 2.0,
                      width: 250.0,
                      color: Colors.black12,
                    ),
                    SizedBox(height: 10.0),
                    Text('To', style: style1),
                    SizedBox(height: 5.0),
                    Text('Estación ITS', style: style2),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Elige el viaje',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                _ListTileHorario(),
                Divider(),
                SizedBox(height: 10.0),
                _ListTileHorario(),
                Divider(),
                SizedBox(height: 10.0),
                _ListTileHorario(),
                Divider(),
                SizedBox(height: 10.0),
                _ListTileHorario(),
                Divider(),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListTileHorario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FaIcon(FontAwesomeIcons.clock, size: 20.0),
          FaIcon(FontAwesomeIcons.dollarSign, size: 20.0),
        ],
      ),
      title: Text('10 : 00 --- 10 : 30'),
      subtitle: Text('\$5.0 USD'),
      trailing: Column(
        children: <Widget>[
          // Text('\$5.0 USD'),
          MaterialButton(
            onPressed: () => Navigator.pushNamed(context, 'ticket_page'),
            color: Colors.lightBlueAccent,
            child: Text(
              'Seleccionar',
              style: TextStyle(color: Colors.white),
            ),
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            // height: 20.0,
          ),
        ],
      ),
    );
  }
}
