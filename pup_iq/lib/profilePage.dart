import 'package:flutter/material.dart';
import 'main.dart';
import 'editProfilePage.dart';
import 'newProfilePage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            // Wrapping the DropdownButton with Center widget
            child: DropdownButton<String>(
              hint: Text(
                'Choose Profile',
                style: TextStyle(
                  color: Colors.black, // Change text color to black
                ),
              ),
              onChanged: (value) {},
              items: [],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle), // Icon for the button
              onPressed: () {
                // Define the action when the button is pressed
                // For example, navigate to the settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewProfilePage()),
                );
              },
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 250,
                  color: Colors.blue,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        ClipOval(
                          child: Image.asset(
                            'lesson.jpg',
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfilePage()),
                            );
                          },
                          child: Text('Edit Profile'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                  child: Center(
                    child: Text(
                      "Breed",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                  child: Center(
                    child: Text(
                      "Age",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                  child: Center(
                    child: Text(
                      "Weight",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
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
