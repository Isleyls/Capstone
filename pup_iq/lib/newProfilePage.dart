import 'package:flutter/material.dart';
import 'package:pup_iq/main.dart';
import 'profilePage.dart';

class NewProfilePage extends StatelessWidget {
  // fields for the class information
  String newName = "";
  String newAge = "";
  String newBreed = "";
  String newWeight = "";

  @override
  Widget build(BuildContext context) {
    var nameFieldController = TextEditingController();
    var ageFieldController = TextEditingController();
    var weightFieldController = TextEditingController();
    var breedFieldController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Add Profile"),
        backgroundColor: Colors.blue,
      ),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: nameFieldController,
                          decoration: InputDecoration(
                            labelText: "Enter your pet's name",
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: breedFieldController,
                          decoration: InputDecoration(
                            labelText: "Enter your pet's breed",
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: ageFieldController,
                          decoration: InputDecoration(
                            labelText: "Enter your pet's Age",
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: weightFieldController,
                          decoration: InputDecoration(
                            labelText: "Enter your pet's weight",
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 8),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          // submit button
                          onPressed: () {
                            newName = nameFieldController.text;
                            newAge = ageFieldController.text;
                            newBreed = breedFieldController.text;
                            newWeight = weightFieldController.text;

                            globalService.addPuppy(
                                newName, newBreed, newAge, newWeight);

                            // Replace the current page with the profile page
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(),
                              ),
                            );
                          },
                          child: Text("Submit"),
                        )
                      ],
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
