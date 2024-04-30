import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class StayPage extends StatelessWidget {
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
              'Introduction:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              'Mastering the Stay Command',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Undoubtedly, you\'ve witnessed dogs in competitive settings like Rally or Obedience, exhibiting impeccable stillness despite the bustling activity surrounding the ring. Yet, mastering a steadfast "Stay" isn\'t just crucial for canine sports; it\'s a cornerstone for fostering good manners and household discipline. Imagine the convenience when your furry companion maintains a sit or down position until you give the signal, simplifying tasks like grooming, greeting guests, or bringing in groceries. However, many pet owners encounter challenges in teaching their dogs to stay. By investing time and adhering to these guidelines, you can empower your dog to hold their ground like a champion.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Stay Until You\'re Released',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Distinguishing between cues is key: "Wait" implies a momentary pause, while "Stay" signals a sustained position until further notice. Picture this: you instruct your dog to stay as you step out to fetch the mail; even if you linger for an hour chatting with neighbors, your dog should remain steadfast upon your return.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Start Small to Teach the Release',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To cultivate a reliable stay behavior, commence with small steps and gradual progression. Begin by acquainting your dog with the meaning of the release word through the following steps:',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  '1. Prompt your dog to sit or lie down.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '2. After a brief moment, calmly offer a treat and promptly utter your release word.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '3. Encourage your dog to rise after issuing the release, utilizing gestures like walking away or clapping your hands.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '4. Commend your dog upon movement.',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '5. Repeat these steps until your dog comprehends that they can move upon hearing the release word.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 16.0),
                      // Add more steps as necessary
                    ],
        ),
      ),
    );
  }
}
