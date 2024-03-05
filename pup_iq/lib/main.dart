import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'profilePage.dart';
import 'puppy.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Pup_iq App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: HomePage(),
      );
    }
}
class HomePage extends StatelessWidget
{
  final String currentLesson = "Current Lesson";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
                    'assets/logoNBG.jpg',
                    width: 100,
                    height: 100,),
        backgroundColor: Colors.blue,
        actions: <Widget>[ IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()),);
          },
          tooltip: 'Go to Profile Page',
        ),
        ],
        

        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 75,
                child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 24,
                  ),
                ),
              ),
              ),
              ListTile(title: Text("Resources"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => resourcesPage()),);

              },
              ),
               ListTile(title: Text("FAQ"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FAQPage()),);
              },
              ),
               ListTile(title: Text("New Owners"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewOwnersPage()),);
              },
              ),
               ListTile(title: Text("Privacy Policy"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),);
              },
              ),
               ListTile(title: Text("Terms Of Use"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TermsOfUsePage()),);
              },
              ),
            ]
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                children:[
                  GestureDetector(
                    onTap: () {
                      print("Current Lesson tapped");
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Current Lesson",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewDogPage()),);
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("New Dog",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BasicsPage()),);
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Basics",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => IntermediatePage()),);
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Intermediate",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HardPage()),);
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Hard",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
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

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
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
                        SizedBox(height:10),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Set the background color to white
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
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
      )

    );
  }
}
class NewProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
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
                        SizedBox(height:10),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white, // Set the background color to white
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
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                    
                  ],
                ),
              ),
                
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                    
                ],
              ),
            ),
                
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
              
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Submit Button Pressed for name");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()),);

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
      )

    );
  }
}


class resourcesPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Resources"),
      backgroundColor: Colors.blue),
    );
  }
  
}

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}
class _FAQPageState extends State<FAQPage> {
  List<bool> _isOpen = [false, false, false, false]; // Tracks if each FAQ item is open

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: ListView(
        children: [
          FAQItem(
            question: 'What is the pupIQ mobile application?',
            answer: 'The pupIQ mobile application is a dog training app that offers various training exercises and resources to help owners train their dogs.',
            isOpen: _isOpen[0],
            onTap: () {
              setState(() {
                _isOpen[0] = !_isOpen[0];
              });
            },
          ),
          FAQItem(
            question: 'How do I download the pupIQ app?',
            answer: 'You can download the pupIQ app from the App Store or Google Play Store on your mobile device.',
            isOpen: _isOpen[1],
            onTap: () {
              setState(() {
                _isOpen[1] = !_isOpen[1];
              });
            },
          ),
          FAQItem(
            question: 'Is the pupIQ app free to use?',
            answer: 'Yes, all features of the pupIQ app are free to use and will remain that way for equal accessibility for all users.',
            isOpen: _isOpen[2],
            onTap: () {
              setState(() {
                _isOpen[2] = !_isOpen[2];
              });
            },
          ),
          FAQItem(
            question: 'My dog is experiencing behavioral issues, what can I do?',
            answer: 'pupIQ has a training feature that targets behavioral issues, which is a good place to reference',
            isOpen: _isOpen[3],
            onTap: () {
              setState(() {
                _isOpen[3] = !_isOpen[3];
              });
            },
          ),
          // Add more FAQItems as needed
        ],
      ),
    );
  }
}
class FAQItem extends StatelessWidget {
  final String question;
  final String answer;
  final bool isOpen;
  final VoidCallback onTap;

  const FAQItem({
    Key? key,
    required this.question,
    required this.answer,
    required this.isOpen,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        onTap();
      },
      children: [
        ExpansionPanel(
          isExpanded: isOpen,
          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(
                question,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  
                ),
              ),
            );
          },
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Text(answer),
          ),
        ),
      ],
    );
  }
}
class NewOwnersPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("New Owners"),
      backgroundColor: Colors.blue),
    );
  }
  
}
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

class NewDogPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Hard Lessons"),
      backgroundColor: Colors.blue),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children:[
                  
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Potty Training",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Crate Training",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Name Learning",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Leash Introduction",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
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
class BasicsPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Basics Training"),
      backgroundColor: Colors.blue),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children:[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SitPage()),);
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Sit",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DownPage()),);
                  
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Lay Down",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StayPage()),);
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Stay",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LeavePage()),);
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Leave It",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
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
class IntermediatePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Intermediate Lessons"),
      backgroundColor: Colors.blue),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children:[
                  GestureDetector(
                    onTap: () {
                      print("Current Lesson tapped");
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Go To Bed/Kennel",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Speak",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Shake",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Roll Over",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
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
class HardPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Hard Lessons"),
      backgroundColor: Colors.blue),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children:[
                  
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CrawlPage()),);
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Crawl",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Spin/Not Done",
                        style: TextStyle(fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Recall/Not Done",
                        style: TextStyle(fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BellsPage()),);
                    },
                    child: Container(
                      height: 205,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Ring Bell For Bathroom",
                        style: TextStyle(fontSize: 25,
                        color: Colors.black,
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

class SitPage extends StatefulWidget{
  const SitPage({Key? key}) : super(key: key);

  @override
  State<SitPage> createState() => _SitPage();
}
class _SitPage extends State<SitPage>
{
  YoutubePlayerController ytcontrol = YoutubePlayerController(
    initialVideoId: 'n93JMBO4cpg'
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Sit"),
      backgroundColor: Colors.blue),
      body: Center(
        child: YoutubePlayer(controller: ytcontrol),
      ),
    );
}
}
class DownPage extends StatefulWidget{
  const DownPage({Key? key}) : super(key: key);

  @override
  State<DownPage> createState() => _DownPage();
}
class _DownPage extends State<DownPage>
{
  YoutubePlayerController ytcontrol = YoutubePlayerController(
    initialVideoId: '8Vsvxvay8PA'
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Down"),
      backgroundColor: Colors.blue),
      body: Center(
        child: YoutubePlayer(controller: ytcontrol),
      ),
    );
}
}
class StayPage extends StatefulWidget{
  const StayPage({Key? key}) : super(key: key);

  @override
  State<StayPage> createState() => _StayPage();
}
class _StayPage extends State<StayPage>
{
  YoutubePlayerController ytcontrol = YoutubePlayerController(
    initialVideoId: 'qOCmi-nD_Pk'
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Stay"),
      backgroundColor: Colors.blue),
      body: Center(
        child: YoutubePlayer(controller: ytcontrol),
      ),
    );
}
}
class LeavePage extends StatefulWidget{
  const LeavePage({Key? key}) : super(key: key);

  @override
  State<LeavePage> createState() => _LeavePage();
}
class _LeavePage extends State<LeavePage>
{
  YoutubePlayerController ytcontrol = YoutubePlayerController(
    initialVideoId: 'fKAF1g21Umc'
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Down"),
      backgroundColor: Colors.blue),
      body: Center(
        child: YoutubePlayer(controller: ytcontrol),
      ),
    );
}
}
class BellsPage extends StatefulWidget{
  const BellsPage({Key? key}) : super(key: key);

  @override
  State<BellsPage> createState() => _BellsPage();
}
class _BellsPage extends State<BellsPage>
{
  YoutubePlayerController ytcontrol = YoutubePlayerController(
    initialVideoId: 'nAXjgUZP5Dg'
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Ring Bell For Bathroom"),
      backgroundColor: Colors.blue),
      body: Center(
        child: YoutubePlayer(controller: ytcontrol),
      ),
    );
}
}
class CrawlPage extends StatefulWidget{
  const CrawlPage({Key? key}) : super(key: key);

  @override
  State<CrawlPage> createState() => _CrawlPage();
}
class _CrawlPage extends State<CrawlPage>
{
  YoutubePlayerController ytcontrol = YoutubePlayerController(
    initialVideoId: 'pyOrzeHEw44'
  );
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Crawl"),
      backgroundColor: Colors.blue),
      body: Center(
        child: YoutubePlayer(controller: ytcontrol),
      ),
    );
}
}

/*
* A class to store and edit the list of dogs. 
*/
class PuppyList extends ChangeNotifier {
  List<puppy> puppyList = [
    puppy("Tobias", "Corgi", 0, 10)
  ];

  void addPuppy(String name, String breed, String age, String weight) {
    puppyList.add(puppy(name, breed, int.parse(age), int.parse(weight)));
  }

  puppy getPuppy(int index) {
    return puppyList[index];
  }

  // Returns the list of dogs
  List<puppy> getData() {
    return puppyList;
  }

  // Sets the list of dogs
  void setData(List<puppy> newList) {
    puppyList = newList;
  }

  // Edits the name
  void editName(puppy toEdit, String newName) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setName(newName);
    }
  }

  // edits the weight
  void editWeight(puppy toEdit, String newWeight) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setWeight(int.parse(newWeight));
    }
  }

  // edits the Breed
  void editBreed(puppy toEdit, String newBreed) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setBreed(newBreed);
    }
  }

  // edits the Age
  void editAge(puppy toEdit, String newAge) {
    int index = puppyList.indexOf(toEdit);

    if (index != -1) {
      puppyList[index].setWeight(int.parse(newAge));
    }
  }
}