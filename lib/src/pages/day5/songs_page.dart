import 'package:flutter/material.dart';

class SongsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
            ),
            Column(
              children: [
                Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 50.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg-3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Now Playing',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Heartfelt Melody',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Orchesta Studio',
                        style: TextStyle(
                          color: Color(0xffff9400),
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '09:45',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 5.0,
                                width: 250.0,
                                color: Color(0xff719b15),
                              ),
                              Container(
                                height: 5.0,
                                width: 100.0,
                                color: Color(0xffff9400),
                              ),
                            ],
                          ),
                          Text(
                            '21:07',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
                Text(
                  'Other Audio in the Playlist',
                  style: TextStyle(
                    color: Color(0xffff9400),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Audio(title: 'Only Time', artist: 'Enya', duration: '3:36'),
                Divider(),
                Audio(title: 'One by One', artist: 'Enya', duration: '3:57'),
                Divider(),
                Audio(
                    title: 'A Comme Amour',
                    artist: 'Richard Clayderman',
                    duration: '3:24'),
                Divider(),
                Audio(
                    title: 'Piano', artist: 'Raul Diblasio', duration: '6:27'),
              ],
            ),
            Buttons(size: size),
          ],
        ),
      ),
    );
  }
}

class Audio extends StatelessWidget {
  final String title;
  final String artist;
  final String duration;

  Audio({
    Key? key,
    required this.title,
    required this.artist,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Feedback.forTap(context),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle,
                size: 40.0,
                color: Color(0xffff9400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    '$artist | $duration',
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

class Buttons extends StatelessWidget {
  final Size size;

  const Buttons({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.47),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Color(0xff719b15),
            mini: true,
            onPressed: () {},
            child: Icon(
              Icons.skip_previous,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Color(0xffff9400),
            onPressed: () {},
            child: Icon(
              Icons.play_arrow,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Color(0xff719b15),
            mini: true,
            onPressed: () {},
            child: Icon(
              Icons.skip_next,
            ),
          ),
        ],
      ),
    );
  }
}
