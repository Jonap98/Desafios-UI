import 'package:flutter/material.dart';

class DestinationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header(context),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      'Sort by ratings',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.expand_more, color: Colors.grey),
                  ],
                ),
                Container(
                  height: 170.0,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DestinationCard(
                        destination: 'Lambeau Field',
                        location: 'Green Bay',
                        rating: 5.0,
                        price: 260,
                      ),
                      DestinationCard(
                        destination: 'SoFi Stadium',
                        location: 'Inglewood',
                        rating: 4.9,
                        price: 380,
                      ),
                      DestinationCard(
                        destination: 'NRG Stadium',
                        location: 'Houston',
                        rating: 4.7,
                        price: 350,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Popular Destinations',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      'Sort by relevance',
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
                      _PopularDestinationCard(
                        destination: 'Cancun',
                        location: 'México',
                        rating: 4.5,
                      ),
                      _PopularDestinationCard(
                        destination: 'New York',
                        location: 'United States',
                        rating: 4.8,
                      ),
                      _PopularDestinationCard(
                        destination: 'Paris',
                        location: 'France',
                        rating: 4.3,
                      ),
                    ],
                  ),
                ),
              ],
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

  Container header(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      color: Color(0xff1b3065),
      child: Column(
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
                margin: EdgeInsets.only(right: 70.0),
                child: Text('Where do you want to travel?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(Icons.casino, color: Colors.blue),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                ),
                onPressed: () {},
                child: Text('Select destination'),
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(Icons.search, color: Colors.blue),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PopularDestinationCard extends StatelessWidget {
  final String destination;
  final String location;
  final double rating;

  const _PopularDestinationCard({
    Key? key,
    required this.destination,
    required this.location,
    required this.rating,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                destination,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 30.0),
              Icon(Icons.grade, color: Colors.orangeAccent, size: 15),
              Text(
                '$rating',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(location),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String destination;
  final String location;
  final double rating;
  final double price;

  const DestinationCard({
    Key? key,
    required this.destination,
    required this.location,
    required this.rating,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 10.0,
      width: 170.0,
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                destination,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.grade, color: Colors.orangeAccent, size: 15),
              Text(
                '$rating',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(location),
          SizedBox(height: 70.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  shape: StadiumBorder(),
                  elevation: 0.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'destination_details_page',
                      arguments: ({
                        'destination': destination,
                        'location': location,
                        'price': price,
                        'rating': rating
                      }));
                },
                child: Text('More',
                    style: TextStyle(color: Colors.blue, fontSize: 12.0)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  elevation: 0.0,
                ),
                onPressed: () {},
                child: Text(
                  '\$$price',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
