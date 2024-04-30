import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShakePage extends StatelessWidget {
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
            Text(
              'How to Teach Your Dog to Shake in 7 Steps',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Teaching your dog tricks is a stimulating way to spend playtime that keeps them mentally sharp and engaged. To teach your dog how to shake, they must first know the sit command and be able to stay in the sitting position.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Have your dog sit. To teach your dog to shake with their front paws, start the training session by having your dog sit.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '2. Make them aware of the treat. Next, place a treat in your hand and close it. Wave your closed fist under your dog’s nose to get their attention and verbally let them know the treat is in your hand.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '3. Give a reward. Your dog may start sniffing, licking, or pawing at your closed hand. When this occurs, open your hand to give them the treat and use positive reinforcement (like verbal praise) to reward them. Repeat this step until you have trained your dog to paw at your hand when there is a treat inside.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '4. Raise the difficulty. Once your dog begins consistently pawing at your closed hand for a treat, allow them to rest their paw on your hand before you praise or reward them. Gradually increase the length of time your dog must leave their paw on your hand before they are rewarded, so they know that holding their paw there (rather than scratching) is the correct behavior.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '5. Implement the shake command. Once your dog has started holding their paw on your hand, associate the gesture with a verbal cue like “shake” or “paw”—but take your time, as introducing the verbal command too early may associate it with the pawing behavior. Use the verbal shake command when you are confident your dog will leave their paw on your hand, while incrementally introducing gentle hand-shaking movements.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '6. Eliminate the treat. When your dog understands the shake command, start phasing out the dog treat. Have your dog shake, but reward them from your other hand, so they no longer expect to receive a treat from the shake hand. As your training sessions continue, offer the treat fewer times, until you have eliminated it from the trick completely.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '7. Switch hands. Teaching a dog to shake with one paw does not mean they will know how to do it with the other paw. If you want your dog to shake with both paws, you will likely need to train them to shake each hand separately. One method is to teach your dog to shake with the paw that is closest to your hand (for instance, your right hand will shake your dog’s left paw, and vice-versa). If you offer your right hand and your dog shakes with their right paw, do not reward them—only give them a treat if they shake with the correct paw.',
              style: TextStyle(fontSize: 16.0),
            ),
                      // Add more steps as necessary
                    ],
        ),
      ),
    );
  }
}
