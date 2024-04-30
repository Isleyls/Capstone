import 'package:flutter/material.dart';

void main() {
  runApp(NutritionPage());
}

class NutritionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 255, 255, 255),
        fontFamily: 'Montserrat',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nutrition and Healthcare for Dogs'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 170, 255),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back to previous screen
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildArticleHeader(),
              SizedBox(height: 20),
              _buildSectionTitle('Nutrition for Dogs and Puppies'),
              _buildSectionContent('A well-balanced diet is essential for supporting a dog\'s overall health, growth, and vitality.'),
              _buildSectionContent('Key Nutrients: Protein, Fat, Carbohydrates, Vitamins and Minerals, Water'),
              _buildSectionContent('Choosing the Right Dog Food: Select high-quality commercial dog food formulated for your dog\'s life stage and specific dietary needs.'),
              _buildSectionContent('Feeding Schedule: Puppies require more frequent feedings than adult dogs, gradually transitioning to two meals a day as they mature.'),
              // Continue with other sections on nutrition...

              _buildSectionTitle('Healthcare for Dogs and Puppies'),
              _buildSectionContent('Regular Veterinary Care: Schedule routine wellness exams with a veterinarian to monitor your dog\'s health and address any concerns.'),
              _buildSectionContent('Parasite Control: Use veterinarian-recommended products to protect your dog from fleas, ticks, and internal parasites.'),
              _buildSectionContent('Spaying and Neutering: Consider spaying or neutering your dog to prevent unwanted litters and provide health benefits.'),
              _buildSectionContent('Dental Care: Maintain your dog\'s oral health with regular brushing and professional dental cleanings as recommended by your veterinarian.'),
              // Continue with other sections on healthcare...

              _buildConclusion(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'April 2024',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'The Essential Guide to Dog Care',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'By: Lani Isley & Tyler Francisco',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        Image.asset(
          'fun.jpg',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey[800],
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 16,
          color: Colors.blueGrey[700],
        ),
      ),
    );
  }

  Widget _buildConclusion() {
    return Container(
      margin: EdgeInsets.only(top: 32.0),
      child: Text(
        'By prioritizing proper nutrition and healthcare, you can ensure your dog lives a healthy and happy life. Remember to consult with your veterinarian for personalized recommendations and guidance on providing the best care for your furry friend.',
        style: TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.italic,
          color: Colors.blueGrey[800],
        ),
      ),
    );
  }
}
