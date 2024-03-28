import 'package:flutter/material.dart';

class privacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Last updated: March 18th, 2024",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'pup_IQ is committed to protecting your privacy.' 
              'This Privacy Policy explains how we collect, use, and disclose information, including any personal information, that we obtain from users of our services.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'By accessing or using the App, you agree to comply with these Terms. If you do not agree with any part of these Terms, you may not use the App.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Information We Collect',
             style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'Names of Your Dogs: We collect the names of your dogs when you provide them to us voluntarily. This information is used solely for the purpose of personalizing your experience with our services.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'How We Use Your Information',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'We use the names of your dogs solely for the purpose of personalizing your experience with our services. We do not use this information for any other purpose, and we do not share it with third parties.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Data Retention',
             style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'We retain the names of your dogs for as long as necessary to provide our services to you. If you wish to have this information removed from our records, please contact us using the contact information provided below.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Security',
             style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'We take reasonable measures to protect the information we collect from loss, theft, misuse, unauthorized access, disclosure, alteration, and destruction.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Changes to This Privacy Policy',
             style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
             style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'If you have any questions or concerns about this Privacy Policy, please contact us at [contact@example.com].',
              style: TextStyle(fontSize: 18),
            ),
            // Add more content here, like sections 1-8 from the terms of use template
          ],
        ),
      ),
    );
  }
}