import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WalletPage extends StatelessWidget {
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
          children: [
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20.0), child: Card1()),
                  Container(
                      margin: EdgeInsets.only(right: 20.0), child: Card1()),
                  Container(
                      margin: EdgeInsets.only(right: 20.0), child: Card1()),
                ],
              ),
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Sorted by higher %',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '24H',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'bitcoin_page'),
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Card2(
                  color: Colors.orangeAccent,
                  icon: FaIcon(FontAwesomeIcons.btc, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Card2(
                color: Colors.purpleAccent,
                icon: FaIcon(FontAwesomeIcons.ethereum, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Card2(
                color: Colors.blueAccent,
                icon: FaIcon(FontAwesomeIcons.viacoin, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Colors.black38),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: Colors.black38), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black38), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black38), label: ''),
      ],
    );
  }

  AppBar myAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black87),
      elevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        'Wallets',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.account_balance_wallet),
          // color: Colors.black38,
          onPressed: () {},
        ),
      ],
    );
  }
}

class Card1 extends StatelessWidget {
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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.black54),
                  child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: FaIcon(FontAwesomeIcons.wallet)),
                  onPressed: () {},
                ),
                SizedBox(width: 20.0),
                Text(
                  'Total Wallet Balance',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                SizedBox(width: 80.0),
                Text('USD'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$39.584',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                Container(
                  height: 20.0,
                  width: 80.0,
                  child: ElevatedButton(
                    child: Text('+3.55%'),
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
            Text(
              '7.25624826 BTC',
              style: TextStyle(fontSize: 16.0, color: Colors.black45),
            ),
            SizedBox(height: 5.0),
            Icon(Icons.keyboard_arrow_down_sharp, size: 30.0),
          ],
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  final FaIcon icon;
  final Color color;

  const Card2({
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: 100.0,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 50.0,
              width: 50.0,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0), color: color),
              child: icon,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '3.523912 BTC',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ 5.441',
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    '\$19.1530',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+ 3.5%',
                    style: TextStyle(color: Colors.green),
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

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Size 35
      leading: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.redAccent),
        child: FaIcon(FontAwesomeIcons.btc, size: 30.0),
      ),
      title: Text('qwerty'),
      subtitle: Text('\$5.4491'),
      trailing: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Text('\$19.153'),
            Text('+4.32%'),
          ],
        ),
      ),
    );
  }
}
