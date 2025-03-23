import 'package:flutter/material.dart';
import 'package:seebook/model/story_model.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  final bool isFirstStory;

  const StoryCard({super.key, required this.story, this.isFirstStory = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image:
              isFirstStory
                  ? AssetImage(story.profileImage)
                  : NetworkImage(story.storyImageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(story.profileImage),
              ),
            ),
          ),
          if (isFirstStory)
            Positioned(
              top: 6,
              left: 6,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, size: 8, color: Colors.white),
              ),
            ),
          Positioned(
            bottom: 5,
            left: 5,
            child: Text(
              story.userName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
