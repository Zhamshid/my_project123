import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/feature/home/api/model/story_model.dart';

class StoryPreview extends StatelessWidget {
  final List<UserStoriesModel> sampleUsers;

  const StoryPreview({Key? key, required this.sampleUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 140,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sampleUsers.length,
        itemBuilder: (context, index) {
          final user = sampleUsers[index];
          return GestureDetector(
            onTap: () {
              context.router.push(
                StoryPageRoute(
                  sampleUsers: sampleUsers,
                  storyGroupIndex: index,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Hero(
                    tag: index,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        user.imageUrl,
                      ),
                    ),
                  ),
                  ColumnSpacer(1),
                  Text(
                    '${user.userName}',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
