import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BitcoinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        color: Colors.black12,
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            BtcCard1(),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black87),
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Bitcoin Wallet',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      actions: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.ellipsisV),
          color: Colors.black38,
          onPressed: () {},
        ),
      ],
    );
  }
}

class BtcCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: 200.0,
        width: 350.0,
        // padding: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.only(top: 15.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.orangeAccent),
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: FaIcon(FontAwesomeIcons.btc)),
                  onPressed: () {},
                ),
                SizedBox(width: 20.0),
                Text(
                  'Bitcoin',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                SizedBox(width: 80.0),
                Text('BTC'),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 30.0),
              alignment: Alignment.centerLeft,
              child: Text(
                '3.529020 BTC',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$19,153 USD',
                  style: TextStyle(fontSize: 16.0, color: Colors.black45),
                ),
                Container(
                  height: 20.0,
                  width: 80.0,
                  child: ElevatedButton(
                    child: Text('+4.32%'),
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Icon(Icons.keyboard_arrow_down_sharp, size: 30.0),
          ],
        ),
      ),
    );
  }
}
