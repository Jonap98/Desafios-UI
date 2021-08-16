import 'package:flutter/material.dart';

class InitialMeditatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250.0,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            // color: Color(0xff8cac1c),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/bg-2.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    SizedBox(width: 90.0),
                    Text(
                      'Meditation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                Text(
                  'Esse irure laborum excepteur aliqua ipsum ea enim. Excepteur non aute ullamco aliquip enim adipisicing do laborum veniam id incididunt.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              'Recommended Playlist',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff8cac1c),
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
            height: 290.0,
            width: double.infinity,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                ListCard(image: 'card-1.png'),
                GestureDetector(
                  child: ListCard(image: 'card-2.png'),
                  onTap: () => {
                    Feedback.forTap(context),
                    Navigator.pushNamed(context, 'songs_page'),
                  },
                ),
                ListCard(image: 'card-1.png'),
                ListCard(image: 'card-2.png'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Top Creator',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff8cac1c),
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, left: 20.0),
            height: 150.0,
            width: double.infinity,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                CreatorCard(image: 'creator-card.png'),
                CreatorCard(image: 'creator-card.png'),
                CreatorCard(image: 'creator-card.png'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffff9400),
        unselectedItemColor: Color(0xffE9ac56),
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow, size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow, size: 30.0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow, size: 30.0),
            label: '',
          ),
        ],
      ),
    );
  }
}

class CreatorCard extends StatelessWidget {
  final String image;

  CreatorCard({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image(
        image: AssetImage('assets/$image'),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  String image;

  ListCard({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image(image: AssetImage('assets/$image')),
    );
  }
}
