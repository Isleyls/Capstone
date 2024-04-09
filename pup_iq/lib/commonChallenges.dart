import 'package:flutter/material.dart';

class CommonChallengesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Common Challenges Faced By New Dog Owners"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Common Challenges",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black, // Change header color to black
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Welcoming a new addition to the family can be exciting, and rewarding. However, as exciting as this experience can be you can come across some challenges along the way. Below will be examples of some of the common challenges faced by new dog owners and resources that you can reference to seek help during these times.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Behavioral Issues",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aggression",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Barking",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Destructive Chewing",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Food Guarding",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Whining",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Separation Anxiety",
                        style: TextStyle(fontSize: 18),
                      ),
                      // Add more steps as necessary
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Socialization",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      // Add more steps as necessary
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Health Concerns",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      // Add more steps as necessary
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Time & Commitment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      // Add more steps as necessary
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adjustment Period",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Place Holder",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}
