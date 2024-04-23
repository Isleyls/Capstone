import 'package:flutter/material.dart';
import 'package:pup_iq/main.dart';
import 'package:pup_iq/profilePage.dart';
import 'puppy.dart';

class EditProfilePage extends StatefulWidget {
  final puppy toEdit;

  EditProfilePage({required this.toEdit});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String newName = "";
  String newAge = "";
  String newBreed = "";
  String newWeight = "";

  late puppy toEdit;
  var nameFieldController = TextEditingController();
  var ageFieldController = TextEditingController();
  var weightFieldController = TextEditingController();
  var breedFieldController = TextEditingController();
  String selectedProfilePicture = 'image1.jpg'; // Default profile picture

  // Define profilePictures list
  List<String> profilePictures = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    // Add more image paths here as needed
  ];

  @override
  void initState() {
    super.initState();
    toEdit = widget.toEdit;
  }

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
        ],
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
                            selectedProfilePicture,
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit),
                            color: Colors.blue,
                            onPressed: () {
                              _showProfilePictureSelectionDialog(context);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Remaining form fields and buttons
                // ...
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showProfilePictureSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Choose Profile Picture"),
          content: Container(
            width: double.maxFinite,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: profilePictures.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedProfilePicture = profilePictures[index];
                    });
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    profilePictures[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
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
                globalService.deletePuppy(toEdit);
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
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
