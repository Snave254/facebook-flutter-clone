import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currenUser;
  final List<Story> stories;
  const Stories({Key? key, required this.currenUser, required this.stories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.purple,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: _StoryCard(
                  isAddStory: true,
                  currenUser: currenUser,
                ));
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: _StoryCard(story: story),
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currenUser;
  final Story story;
  const _StoryCard(
      {Key? key,
      this.isAddStory = false,
      required this.currenUser,
      required this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
