import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/feature/home/api/model/news_model.dart';

@RoutePage()
class NewsDetailsScreen extends StatefulWidget {
  final String imageLink;
  final NewsModel newsModel;

  const NewsDetailsScreen(
      {super.key, required this.imageLink, required this.newsModel});

  @override
  State<NewsDetailsScreen> createState() => _NewsDetailsScreenState();
}

class _NewsDetailsScreenState extends State<NewsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.newsModel.author),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Hero(
                tag: "${widget.imageLink}",
                child: Image.network(
                  widget.imageLink,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.newsModel.title,
                    ),
                    ColumnSpacer(2),
                    Text(
                      widget.newsModel.description,
                    ),
                    ColumnSpacer(2),
                    Text(
                      widget.newsModel.fullNewsText,
                    ),
                    Text(
                      widget.newsModel.fullNewsText,
                    ),
                    Text(
                      widget.newsModel.fullNewsText,
                    ),
                    Text(
                      widget.newsModel.fullNewsText,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
