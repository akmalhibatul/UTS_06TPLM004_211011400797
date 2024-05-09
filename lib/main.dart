import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Shoes',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Image.asset(
                "1.png",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildColoredBox(Colors.deepPurpleAccent, "Nike SB Zoom Blazer",
                  "Mid Premium", 450, 150, "RP. 250.000", "sh2.png"),
              SizedBox(height: 20),
              _buildColoredBox(
                  Colors.lightBlueAccent,
                  "Nike Air Zoom Pegasus",
                  "Men`s Rood Running Shoes",
                  450,
                  150,
                  "RP. 150.000",
                  "sh1.png"),
              SizedBox(height: 20),
              _buildColoredBox(
                  Colors.pinkAccent,
                  "Nike ZoomX Vaporfly",
                  "Men`s Rood Running Shoes",
                  450,
                  150,
                  "RP. 150.000",
                  "sh2.png"),
              SizedBox(height: 20),
              _buildColoredBox(Colors.blueGrey, "Nike Air Force 1 S50",
                  "Older Kids Shoe", 450, 150, "RP. 150.000", "sh1.png"),
              SizedBox(height: 20),
              _buildColoredBox(Colors.orangeAccent, "Nike Waffle One",
                  "Men`s Shoes", 450, 150, "RP. 150.000", "sh2.png"),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColoredBox(Color color, String title, String description,
      double width, double height, String harga, String gambar) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        harga,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  gambar,
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
