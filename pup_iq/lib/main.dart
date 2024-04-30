import 'package:flutter/material.dart';
import 'package:pup_iq/PuppyService.dart';
import 'profilePage.dart';
import 'newProfilePage.dart';
import 'editProfilePage.dart';
import 'termsOfUsePage.dart';
import 'newDogPage.dart';
import 'basicsPage.dart';
import 'intermediatePage.dart';
import 'hardPage.dart';
import 'privacyPage.dart';
import 'commonChallenges.dart';
import 'nutrition.dart';
//import 'package:flutter_icon/flutter_icon.dart';

PuppyService globalService = PuppyService();

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
              /*ListTile(title: Text("Related Articles"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FAQPage()),);

              },
              ),*/
              ListTile(title: Text("Common Challenges"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CommonChallengesPage()),);

              },
              ),
              ListTile(title: Text("Nutrition & HealthCare"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NutritionPage()),);

              },
              ),
               ListTile(title: Text("FAQ"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FAQPage()),);
              },
              ),
               ListTile(title: Text("Privacy Policy"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => privacyPage()),);
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewDogPage()),);
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
                      child: Center(
                        child: Text("Foundations",
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
