import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class laydownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teach Your Dog to Sit"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: 'n93JMBO4cpg', // Change to your video ID
                  flags: YoutubePlayerFlags(
                    autoPlay: true,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
                progressColors: ProgressBarColors(
                  playedColor: Colors.blue,
                  handleColor: Colors.blueAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Teach Your Dog to Lay Down in Six Easy Steps:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Introducing the 'lie down' command to your dog is another essential skill that enhances their obedience and strengthens your bond. Follow these six easy steps to teach your dog to lie down:",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "1. Positioning: With your dog in a sitting position and a treat in your hand, move your hand from your dog's nose towards their chest, then straight down towards the floor.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "2. Luring: Your dog should follow the treat into a lying down position. Praise and reward them with the treat immediately.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "3. Practice: Practice this movement a number of times in short but regular sessions to reinforce the behavior.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "4. Adding the Command: When your dog is easily following the treat into a down position, start saying the word 'down' just as your dog is getting into the down position.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "5. Continued Practice: Continue practicing this command in short but regular sessions to solidify your dog's understanding.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "6. Reinforcement: While your dog is lying down, give them treats to reinforce the behavior and increase the time they spend in the down position.",
              style: TextStyle(fontSize: 18),
            ),
                      // Add more steps as necessary
                    ],
        ),
      ),
    );
  }
}
