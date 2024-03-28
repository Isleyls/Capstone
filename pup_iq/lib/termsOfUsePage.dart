import 'package:flutter/material.dart';

class TermsOfUsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms Of Use"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "TERMS OF USE",
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
              'Please read these Terms of Use ("Terms") carefully before using the pupIQ application (the "App") provided by pupIQ LLC ("we", "us", or "our").',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'By accessing or using the App, you agree to comply with these Terms. If you do not agree with any part of these Terms, you may not use the App.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'ELIGIBILITY',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'You must be at least 18 years old, or the age of majority in your jurisdiction, to use the App. If you are under 18 years old, you may only use the App with the consent of a parent or legal guardian.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'USER AGREEMENT',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'We reserve the right to refuse service, terminate accounts, or restrict access to the App for any reason, without prior notice.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'INTELLECTUAL PROPERTY',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'The App and its contents, including but not limited to text, graphics, images, and logos, are the property of pupIQ LLC and are protected by copyright and other intellectual property laws. You may not use, reproduce, or distribute any content from the App without our prior written consent.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'LINKS TO THIRD-PARTY SITES',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'The App may contain links to third-party websites or services that are not owned or controlled by us. We have no control over, and assume no responsibility for, the content, privacy policies, or practices of any third-party sites or services.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'WARRANTY DISCLAIMER',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'The App is provided "as is" and "as available" without warranties of any kind, whether express or implied. We do not warrant that the App will be uninterrupted or error-free, or that any defects will be corrected.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'LIMITATION OF LIABILITY',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'In no event shall pupIQ LLC, its affiliates, or its licensors be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or in connection with your use of the App.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'INDEMNIFICATION',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              "You agree to indemnify and hold pupIQ LLC harmless from any claims, losses, liabilities, damages, costs, or expenses, including reasonable attorneys' fees, arising out of or in connection with your use of the App or any violation of these Terms.",
               style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'GOVERNING LAW',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'These Terms shall be governed by and construed in accordance with the laws of North Carolina, United States, without regard to its conflict of law provisions.',
              style: TextStyle(fontSize: 18),
            ),
             SizedBox(height: 20),
            Text(
              'CHANGES TO TERMS',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'We reserve the right to modify or replace these Terms at any time. If we make material changes to these Terms, we will notify you by email or by posting a notice on the App.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'CONTACT US',
             style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Text(
              'If you have any questions about these Terms, please contact us at pupIQ@gmail.com.',
              style: TextStyle(fontSize: 18),
            ),
            
            // Add more content here, like sections 1-8 from the terms of use template
          ],
        ),
      ),
    );
  }
}