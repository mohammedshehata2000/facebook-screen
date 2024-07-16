import 'package:flutter/material.dart';

import 'StoryModel.dart';

class StoryScreen extends StatelessWidget {
  List<Story> stories = List.generate(
    150,
    (index) => Story(
      name: 'Owner ${index + 1}',
      avatar: 'assets/images/facebookStory.jpg',
      storyBackground: 'assets/images/facebookStory.jpg',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) => StoryWidget(
          name: stories[index].name,
          avatar: stories[index].avatar,
          image: stories[index].storyBackground,
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  String name;
  String avatar;
  String image;

  StoryWidget({required this.name, required this.avatar, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        width: 100, // Adjusted width for better display
        child: Card(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              // Background image
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),

              // Dark overlay for text readability
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black.withOpacity(0.3),
                ),
              ),

              // Avatar and name
              Positioned(
                top: 5.0,
                left: 5.0,
                child: Icon(
                  Icons.account_circle,
                  size: 40,
                  color: Colors.white,
                ),
              ),

              // Name at the bottom
              Positioned(
                bottom: 5.0,
                right: 5.0,
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
