import 'package:flutter/material.dart';

void main() {
  runApp(AnimeApp());
}

class AnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ani-Bimby',
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.orange[50],
      ),
      home: AnimeScreen(),
    );
  }
}

class AnimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ani-Bimby'),
        actions: [
          IconButton(
            icon: Image.asset('img/ani-bimby.jpeg'), // Replace with your logo image
            onPressed: () {
              // Do something when the logo is pressed
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Anime of All-time',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                //THIS IS WHERE MY LABORATORY 2 WIDGET TREE BEGIN
                //CONTAINER -> ROW -> [COLUMN,COLUMN,COLUMN] -> [ICON,CONTAINER] -> TEXT
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.person, color: Colors.orange),
                          Container(
                            child: Text('Masashi Kishimoto'),
                          ),
                          AnimeAlltime(
                            image: 'img/naruto.jpg',
                            name: 'Naruto',
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.person, color: Colors.orange),
                          Container(
                            child: Text('Akira Toriyama'),
                          ),
                          AnimeAlltime(
                            image: 'img/dragonball.png',
                            name: 'DragonBall',
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.person, color: Colors.orange),
                          Container(
                            child: Text('Eichiro Oda'),
                          ),
                          AnimeAlltime(
                            image: 'img/onepiece.jpg',
                            name: 'One Piece',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //THIS IS WHERE MY LABORATORY 2 WIDGET TREE ENDS
                //CONTAINER -> ROW -> [COLUMN,COLUMN,COLUMN] -> [ICON,CONTAINER] -> TEXT
              ),



              //THIS IS FOR ADDITIONAL DESIGN ONLY

              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Popular Today',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    children: [
                      PopularToday(
                        image: 'img/mah.png',
                        name: 'My Hero Academia',
                      ),
                      PopularToday(
                        image: 'img/mah.jpg',
                        name: 'Bleach',
                      ),
                      PopularToday(
                        image: 'img/dms.jpg',
                        name: 'Kimetsu no Yaiba',
                      ),
                      PopularToday(
                        image: 'img/aot.jpg',
                        name: 'Attack on Titan',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimeAlltime extends StatelessWidget {
  final String image;
  final String name;

  const AnimeAlltime({
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class PopularToday extends StatelessWidget {
  final String image;
  final String name;

  const PopularToday({
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}