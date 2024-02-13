import 'package:flutter/material.dart';

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
        title: Text('pupIQ'),
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
                child:DrawerHeader(
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
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.2),
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
                      print("Current Lesson tapped");
                    },
                    child: Container(
                      height: 150,
                      color: Color.fromRGBO(33, 150, 243, 1).withOpacity(.3),
                      child: Center(
                        child: Text("Beginner",
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
                      print("Current Lesson tapped");
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
                      print("Current Lesson tapped");
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

class ProfilePage extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('Name'),
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
      icon: Icon(Icons.settings),
      onPressed:() {

      },
      ),
      ],
      ),
      body: 
      Stack(
        children: [
        Positioned(
          top: 15,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: LinearProgressIndicator(
              value: .6,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(135, 243, 33, 33).withOpacity(1),
                ),
            )
          ),
        ),
        ]
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
class FAQPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("FAQ"),
      backgroundColor: Colors.blue),
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
    );
  }
  
}
class TermsOfUsePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Terms Of Use"),
      backgroundColor: Colors.blue),
    );
  }
  
}


