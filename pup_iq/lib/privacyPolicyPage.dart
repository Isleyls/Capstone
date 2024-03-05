import 'package:flutter/material.dart';
import 'puppy.dart';

class PrivacyPolicyPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy"),
      backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 32,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Last updated: Feb 17, 2024",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Place holder for now",
              style: TextStyle(fontSize: 18),
            ),

            
          ],
        ),
      ),
    );
  }
  
}