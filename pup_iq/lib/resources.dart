import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'profilePage.dart';
import 'puppy.dart';
import 'shoppingPage.dart';

class resourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0), // Added bottom padding
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: ClickableBlock(
                        color: Colors.blue.withOpacity(.3),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ShoppingPage()),
                          );
                        },
                        label: 'Shopping',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ClickableBlock(
                        color: Colors.blue.withOpacity(.5),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BluePage()),
                          );
                        },
                        label: 'Common Challenges',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: ClickableBlock(
                        color: Colors.blue.withOpacity(.5),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GreenPage()),
                          );
                        },
                        label: 'Nutrition and Health Care',
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ClickableBlock(
                        color: Colors.blue.withOpacity(.3),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => YellowPage()),
                          );
                        },
                        label: 'Related Articles',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClickableBlock extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final String label;

  const ClickableBlock({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: color,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}



class BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blue Page'),
      ),
      body: Center(
        child: Text('This is the Blue Page'),
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Green Page'),
      ),
      body: Center(
        child: Text('This is the Green Page'),
      ),
    );
  }
}

class YellowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yellow Page'),
      ),
      body: Center(
        child: Text('This is the Yellow Page'),
      ),
    );
  }
}