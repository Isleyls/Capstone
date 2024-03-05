import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'profilePage.dart';
import 'newProfilePage.dart';
import 'editProfilePage.dart';
import 'resources.dart';
import 'puppy.dart';
import 'newOwnersPage.dart';
import 'privacyPolicyPage.dart';
import 'termsOfUsePage.dart';
import 'newDogPage.dart';
import 'basicsPage.dart';
import 'intermediatePage.dart';
import 'hardPage.dart';


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