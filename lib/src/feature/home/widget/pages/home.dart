import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/router/app_router.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/feature/home/api/api/home_api.dart';
import 'package:my_project/src/feature/home/widget/widgets/news_card_widget.dart';
import 'package:my_project/src/feature/home/widget/widgets/story_preview_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDefault,
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            context.localized.news,
            style: TextStyles.h2Bold.copyWith(
              color: AppColors.mbBrand,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  StoryPreview(
                    sampleUsers: HomeApiData.sampleUsers,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    dragStartBehavior: DragStartBehavior.start,
                    itemCount: HomeApiData.newsData.length,
                    itemBuilder: (context, index) {
                      final singleNew = HomeApiData.newsData[index];
                      return CupertinoButton(
                        onPressed: () {
                          context.router.push(
                            NewsDetailsScreenRoute(
                              imageLink: singleNew.imageLink,
                              newsModel: singleNew,
                            ),
                          );
                        },
                        padding: EdgeInsets.zero,
                        child: Hero(
                          tag: singleNew.imageLink,
                          child: NewsCard(
                            title: singleNew.description,
                            description: '',
                            image: singleNew.imageLink,
                            contry: singleNew.country,
                            author: singleNew.author,
                            authorImagePath: singleNew.authorImagePath,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => ColumnSpacer(.8),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
