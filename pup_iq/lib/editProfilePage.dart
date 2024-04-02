import 'package:flutter/material.dart';
import 'puppy.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Edit Profile"),
            backgroundColor: Colors.blue,
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  // send an alert to ensure the user wants to delete the profile,
                  showDeleteConfirmationDialog(context);
                },
                child: Text("Delete Profile"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
              )
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
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors
                                  .white, // Set the background color to white
                            ),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.blue, // Set the icon color
                              onPressed: () {
                                // Action to perform when the edit button is pressed
                                print("Edit Image Pressed");
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter your pet's name",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Action to perform when the submit button is pressed
                            print("Submit Button Pressed for name");
                          },
                          child: Text("Submit"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter your pet's breed",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Action to perform when the submit button is pressed
                            print("Submit Button Pressed for breed");
                          },
                          child: Text("Submit"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter your pet's Age",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Action to perform when the submit button is pressed
                            print("Submit Button Pressed for Age");
                          },
                          child: Text("Submit"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter your pet's weight",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Action to perform when the submit button is pressed
                            print("Submit Button Pressed for Weight");
                          },
                          child: Text("Submit"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  void showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Profile"),
          content: Text("Are you sure you want to delete the profile?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Perform deletion logic here (call to delete in globalService)
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                "Delete",
                style: TextStyle(
                  color: Colors.red, // Change the text color if needed
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
