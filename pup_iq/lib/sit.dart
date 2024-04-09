import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SitPage extends StatelessWidget {
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
            SizedBox(height: 20),
            Text(
              "Teach Your Dog to Sit",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black, // Change header color to black
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Introducing basic commands to your furry friend is not only essential for their obedience but also forms the foundation for effective communication between you and your pet. One of the fundamental commands every dog should learn is 'sit.' Teaching your dog to sit not only enhances their manners but also serves as a building block for more advanced training. Here’s a comprehensive step-by-step guide to help you teach your dog this crucial command.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Understanding the Importance of Teaching Sit Command:",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "- Foundation for Obedience: Sitting on command establishes a basis for other commands and behaviors.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "- Safety: Sitting can help control your dog in various situations, such as crossing a road or meeting new people.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "- Focus and Attention: Training your dog to sit helps improve their focus and attention on you, strengthening your bond.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Step-by-Step Guide:",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black, // Change header color to black
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Preparation:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "   - Treats: Have plenty of small, easily chewable treats ready. These treats will serve as positive reinforcement during the training.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "   - Quiet Environment: Choose a quiet place with minimal distractions to conduct the training session. This could be your living room or backyard.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "2. Establishing a Connection:",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "   - Get down to your dog's level to create a sense of camaraderie",
                        style: TextStyle(fontSize: 18),
                      ),
                      // Add more steps as necessary
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
