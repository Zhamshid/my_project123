class UserStoriesModel {
  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;

  UserStoriesModel(
      {required this.stories, required this.userName, required this.imageUrl});
}

class StoryModel {
  final String imageUrl;

  StoryModel({required this.imageUrl});
}
