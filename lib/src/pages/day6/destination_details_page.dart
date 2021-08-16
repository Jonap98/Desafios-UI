import 'package:flutter/material.dart';

class DestinationDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dest =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // print(location['location']);
    // print(location);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1b3065),
        title: Text(dest['destination']),
        actions: [
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 20.0),
        ],
        bottom: PreferredSize(
          child: _bottomAppBar(dest),
          preferredSize: Size.fromHeight(100.0),
        ),
      ),
      body: ListView(
        children: [
          // _header(context),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Included',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'For more details, press on the icon',
                    style: TextStyle(color: Colors.grey),
                  ),
                  _buttons(),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'Rating & Reviews',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.grade, color: Colors.orangeAccent),
                        Text('${dest['rating']}',
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'Sort by ratings',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.expand_more, color: Colors.grey),
                        Expanded(child: SizedBox()),
                        Text(
                          '429 Reviews',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: ListView(
                      padding: EdgeInsets.all(0.0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        _Review(destination: dest['destination']),
                        _Review(destination: dest['destination']),
                        _Review(destination: dest['destination']),
                      ],
                    ),
                  ),
                  Text(
                    'Gallery',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        'Selected by recent photos',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.expand_more, color: Colors.grey),
                    ],
                  ),
                  Container(
                    height: 220.0,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _CardGallery(),
                        _CardGallery(),
                        _CardGallery(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
        ],
      ),
    );
  }

  Container _bottomAppBar(dest) {
    return Container(
      height: 100.0,
      width: double.infinity,
      // padding: EdgeInsets.only(top: 50.0),
      color: Color(0xff1b3065),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(left: 75.0),
            child: Text(
              '${dest['destination']}, ${dest['location']}',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 75.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
                onPressed: () {},
                child: Text('\$${dest['price']}'),
              ),
              Expanded(child: SizedBox()),
              Text(
                'Expires in 58h 23 min',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 20.0),
            ],
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Container _buttons() {
    return Container(
      margin: EdgeInsets.only(right: 20.0, top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              FloatingActionButton(
                elevation: 0.0,
                onPressed: () {},
                child: Icon(Icons.flight),
              ),
              SizedBox(height: 20.0),
              Text('Flight'),
            ],
          ),
          Column(
            children: [
              FloatingActionButton(
                elevation: 0.0,
                onPressed: () {},
                child: Icon(Icons.hotel),
              ),
              SizedBox(height: 20.0),
              Text('Hotel'),
            ],
          ),
          Column(
            children: [
              FloatingActionButton(
                elevation: 0.0,
                onPressed: () {},
                child: Icon(Icons.directions_car),
              ),
              SizedBox(height: 20.0),
              Text('Transport'),
            ],
          ),
          Column(
            children: [
              FloatingActionButton(
                elevation: 0.0,
                onPressed: () {},
                child: Icon(Icons.map),
              ),
              SizedBox(height: 20.0),
              Text('Tour'),
            ],
          ),
        ],
      ),
    );
  }

  Container _header(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      padding: EdgeInsets.only(top: 50.0),
      color: Color(0xff1b3065),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              Container(
                margin: EdgeInsets.only(right: 150.0),
                child: Text(
                  'Lambeau Field',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(Icons.favorite, color: Colors.white),
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 60.0),
            child: Text(
              'Lambeau Field',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
                onPressed: () {},
                child: Text('\$260'),
              ),
              SizedBox(width: 70.0),
              Text(
                'Expires in 58h 23 min',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}

class _CardGallery extends StatelessWidget {
  const _CardGallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      width: 170.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170.0,
            // margin: EdgeInsets.only(right: 20.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}

class _Review extends StatelessWidget {
  final String destination;
  const _Review({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 350.0,
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black12,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '$destination is Awesome!!!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox()),
              Text(
                'Jona Perez',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.grade, color: Colors.orangeAccent, size: 20.0),
              Icon(Icons.grade, color: Colors.orangeAccent, size: 20.0),
              Icon(Icons.grade, color: Colors.orangeAccent, size: 20.0),
              Icon(Icons.grade, color: Colors.orangeAccent, size: 20.0),
              Icon(Icons.grade, color: Colors.orangeAccent, size: 20.0),
              Expanded(child: SizedBox()),
              Text(
                '10/11/2019',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
              'Ad adipisicing eiusmod amet nisi labore fugiat proident commodo. Adipisicing est et occaecat nostrud anim.',
              style: TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
