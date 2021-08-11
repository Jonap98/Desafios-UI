import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TicketPage extends StatelessWidget {
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
                      'Ticket',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
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
                FooterPago(),
              ],
            ),
          ),
          Positioned(
            top: 120.0,
            left: 0.0,
            right: 0.0,
            child: InformationCard(),
          ),
        ],
      ),
    );
  }
}

class InformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle style1 = TextStyle(color: Colors.black38);
    final TextStyle style2 =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0);

    return Container(
      height: 350.0,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                  SizedBox(height: 20.0),
                ],
              ),
            ],
            //Aqui
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.clock, size: 30.0),
                  FaIcon(FontAwesomeIcons.mapMarkerAlt, size: 30.0),
                  FaIcon(FontAwesomeIcons.dollarSign, size: 30.0),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '10 : 00 am',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Estación UAdeC',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    '\$ 5.00 USD',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Container(
                    height: 150.0,
                    width: 150.0,
                    child: Image(
                      image: AssetImage('assets/QR.jpeg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterPago extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextStyle style1 = TextStyle(color: Colors.black38);
    final TextStyle style2 =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0);

    return Container(
      height: size.height * 0.65,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Resumen de pago',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Cantidad total:',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '\$ 5.0 USD',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Tarjeta de crédito',
                style: style2,
              ),
              Text('Saldo: \$84.00'),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Monedero electrónico',
                style: style2,
              ),
              Text('Saldo: \$18.95'),
            ],
          ),
          SizedBox(height: 20.0),
          MaterialButton(
            onPressed: () {},
            height: 50.0,
            minWidth: double.infinity,
            color: Colors.lightBlueAccent,
            child: Text(
              'Comprar ticket',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
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
