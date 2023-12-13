import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/feature/home/api/model/story_model.dart';
import 'package:story/story_image.dart';
import 'package:story/story_page_view.dart';

@RoutePage()
class StoryPage extends StatefulWidget {
  final List<UserStoriesModel> sampleUsers;
  final int storyGroupIndex;
  const StoryPage(
      {Key? key, required this.sampleUsers, required this.storyGroupIndex})
      : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
      IndicatorAnimationCommand.resume,
    );
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Dismissible(
          key: ValueKey(widget.storyGroupIndex),
          direction: DismissDirection.down,
          movementDuration: Duration(microseconds: 1),
          resizeDuration: Duration(microseconds: 1),
          onDismissed: (direction) {
            Navigator.pop(context);
          },
          child: StoryPageView(
            itemBuilder: (context, pageIndex, storyIndex) {
              final user = widget.sampleUsers[pageIndex];
              final story = user.stories[storyIndex];
              return Stack(
                children: [
                  Positioned.fill(
                    child: Container(color: Colors.black),
                  ),
                  Positioned.fill(
                    child: StoryImage(
                      key: ValueKey(story.imageUrl),
                      imageProvider: NetworkImage(
                        story.imageUrl,
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 44, left: 8),
                    child: Row(
                      children: [
                        Hero(
                          tag: widget.storyGroupIndex,
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(user.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          user.userName,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            gestureItemBuilder: (context, pageIndex, storyIndex) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        color: Colors.white,
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
            indicatorAnimationController: indicatorAnimationController,
            initialPage: widget.storyGroupIndex,
            pageLength: widget.sampleUsers.length,
            storyLength: (int pageIndex) {
              return widget.sampleUsers[pageIndex].stories.length;
            },
            onPageLimitReached: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
