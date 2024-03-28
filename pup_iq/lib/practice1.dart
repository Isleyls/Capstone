/*import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String _name = '';
  String _breed = '';
  int _age = 0;
  double _weight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Breed'),
              onChanged: (value) {
                setState(() {
                  _breed = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _age = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Weight'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _weight = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Update profile information on the page
                setState(() {});
              },
              child: Text('Update Profile'),
            ),
            SizedBox(height: 20),
            Text(
              'Name: $_name',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Breed: $_breed',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Age: $_age',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Weight: $_weight',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}*/



/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clickable Blocks Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable Blocks'),
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
                            MaterialPageRoute(builder: (context) => RedPage()),
                          );
                        },
                        label: 'New Owner Shopping List',
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
                        label: 'Activities with your Furry Friend',
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

class RedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Page'),
      ),
      body: Center(
        child: Text('This is the Red Page'),
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
}*/



/*import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Dog CheckList',
      home: ChecklistPage(),
    );
  }
}

class ChecklistPage extends StatefulWidget {
  @override
  _ChecklistPageState createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  late SharedPreferences prefs;
  List<String> tasks = [
    'Collar',
    'Leash',
    'Dog Bed',
    'Chew Toys',
    'Food/Water Bowls',
    'Carrier',
    'Kennel',
    'Pee Pads',
    'Food',
    'Treats',
    'Vaccinations/Vet Visit',
  ];
  List<bool> taskStatus = [];

  @override
  void initState() {
    super.initState();
    initializeSharedPreferences();
  }

  Future<void> initializeSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    taskStatus = List<bool>.filled(tasks.length, false);
    // Retrieve saved status from SharedPreferences
    for (int i = 0; i < tasks.length; i++) {
      taskStatus[i] = prefs.getBool(tasks[i]) ?? false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Dog Checklist'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(tasks[index]),
            value: taskStatus[index],
            onChanged: (value) {
              setState(() {
                taskStatus[index] = value!;
              });
              // Save status to SharedPreferences when it changes
              prefs.setBool(tasks[index], value!);
            },
          );
        },
      ),
    );
  }
}*/



/*import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FormScreen(),
  ));
}

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _textEditingController = TextEditingController();
  String? _errorText;

  String _validateText(String value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter some text';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Box Demo")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _textEditingController,
                decoration: InputDecoration(labelText: 'Enter Text', errorText: _errorText),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String text = _textEditingController.text;
                  String error = _validateText(text);
                  setState(() {
                    _errorText = error;
                  });
                  if (error.isEmpty) {
                    // Proceed with your action
                    print('Submitted text: $text');
                    // You can perform any action here, like submitting to an API
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}*/


