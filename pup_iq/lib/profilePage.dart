import 'package:flutter/material.dart';
import 'package:pup_iq/PuppyService.dart';
import 'package:pup_iq/puppy.dart';
import 'main.dart';
import 'editProfilePage.dart';
import 'newProfilePage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late puppy selectedItem;
  late List<puppy> currentList;

  @override
  void initState() {
    super.initState();
    currentList = PuppyService.getData(); // use the did change dependencies method instead on oninit
    selectedItem = currentList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: DropdownButton<puppy>(
            value: selectedItem,
            onChanged: (newValue) {
              setState(() {
                selectedItem = newValue!;
              });
            },
            items: currentList.map<DropdownMenuItem<puppy>>((puppy value) {
              return DropdownMenuItem<puppy>(
                value: value,
                child: Text(value.name),
              );
            }).toList(),
          ),
        ),
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
