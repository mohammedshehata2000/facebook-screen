import 'package:assignment2/post_screen.dart';
import 'package:flutter/material.dart';

import 'story_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'HOME',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [StoryScreen(), Expanded(child: PostScreen())],
      ),
    );
  }
}
