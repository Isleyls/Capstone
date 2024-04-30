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
            SizedBox(height: 20.0),
            Text(
              'Introduction:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              "Teaching your puppy how to sit is a fundamental skill that sets the groundwork for obedience and communication. By mastering this basic command, your dog learns impulse control and opens the door to further training. Let's delve into the steps to teach your dog to sit effectively.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'What You Need:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              "- A quiet room\n"
              "- Your dog’s favorite treats\n"
              "- Optional: A clicker\n"
              "- Enthusiasm",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Step-by-Step Guide:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              "1. Get Close and Hold a Treat:\n"
              "Approach your dog and hold a treat near their nose. Opt for their favorite treats, but keep the quantity small to avoid disrupting their diet.\n\n"
              "2. Raise the Treat:\n"
              "While your dog is focused on the treat, lift your hand above their head, enticing them to follow the treat and naturally sit down.\n\n"
              "3. Offer the Treat:\n"
              "Once your dog sits, immediately reward them with praise, a clicker sound (if using), and the treat.\n\n"
              "4. Repeat:\n"
              "Practice the sit command multiple times. Encourage your dog to stand up again by walking away or tossing a treat in the opposite direction, then repeat the process.\n\n"
              "5. Add Verbal Cue and Hand Signal:\n"
              "Introduce the verbal cue 'sit' along with a corresponding hand signal. Ensure your dog remains still when you give the verbal cue to avoid confusion.\n\n"
              "6. Phase Out Treats:\n"
              "As your dog becomes proficient, gradually decrease the reliance on treats. Transition to using only the verbal cue and hand signal, while still offering praise and enthusiasm.",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Things to Avoid:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              "- Long Sessions:\n"
              "Keep training sessions brief, under 5 minutes each, to prevent boredom or frustration.\n\n"
              "- Comfortable Environment:\n"
              "Practice in a quiet, safe space initially to minimize distractions. Avoid public areas until your dog is more focused.\n\n"
              "- Patience is Key:\n"
              "Stay patient and avoid frustration. If either you or your dog becomes frustrated, take a break and resume later. Training should be enjoyable for both of you.",
              style: TextStyle(fontSize: 16.0),
            ),
                      // Add more steps as necessary
                    ],
        ),
      ),
    );
  }
}
