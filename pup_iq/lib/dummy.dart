import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String currentLesson = "Current Lesson";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pupIQ'),
        backgroundColor: Color.fromARGB(124, 0, 94, 255),
        actions: <Widget>[ IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            // Navigate to profile page when profile icon is clicked
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          tooltip: 'Go to Profile Page',
        ),
        ],
       
      
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: const Color.fromARGB(255, 245, 0, 0),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Resources'),
              onTap: () {
                // Navigate to Item 1 page
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('FAQ'),
              onTap: () {
                // Navigate to Item 2 page
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text("New Owners"),
              onTap: () {
                // Navigate to Item 2 page
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text("Privacy Policy"),
              onTap: () {
                // Navigate to Item 2 page
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text("Terms Of Use"),
              onTap: () {
                // Navigate to Item 2 page
                Navigator.pop(context); // Close the drawer
              },
            ),
            // Add more ListTile widgets for additional menu items
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle onTap event for "Current Lesson"
                    print('Current Lesson tapped');
                    // Navigate to lesson details page
                  },
                  child: Container(
                    height: 150, // Adjust height as needed
                    color: Color.fromARGB(255, 243, 33, 33).withOpacity(0.3),
                    child: Center(
                      child: Text(
                        "Current lesson",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0), // Add some spacing between items
                GestureDetector(
                  onTap: () {
                    // Handle onTap event for the second block
                    print('Second Block tapped');
                    // Navigate to the corresponding page
                  },
                  child: Container(
                    height: 150, // Adjust height as needed
                    color: Colors.green.withOpacity(0.3),
                    child: Center(
                      child: Text(
                        "Beginner",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle onTap event for the second block
                    print('Third Block tapped');
                    // Navigate to the corresponding page
                  },
                  child: Container(
                    height: 150, // Adjust height as needed
                    color: Color.fromARGB(255, 105, 20, 69).withOpacity(0.3),
                    child: Center(
                      child: Text(
                        "Intermediate",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle onTap event for the second block
                    print('Fourth Block tapped');
                    // Navigate to the corresponding page
                  },
                  child: Container(
                    height: 150, // Adjust height as needed
                    color: Color.fromARGB(255, 17, 53, 94).withOpacity(0.3),
                    child: Center(
                      child: Text(
                        "Hard",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Name'),
        backgroundColor: Color.fromARGB(124, 0, 94, 255),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle menu button press (e.g., open navigation drawer)
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 15.0, // Adjust top position as needed
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: LinearProgressIndicator(
                value: 0.6,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(135, 243, 33, 33),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60.0, // Adjust top position as needed
            left: -550,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
                    child: Image.asset(
                      'lesson.jpg', // Replace with your image path
                      width: 100, // Adjust width as needed
                      height: 100, // Adjust height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Animal', // User's name
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
