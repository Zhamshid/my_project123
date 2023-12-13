class NewsModel {
  final String imageLink;
  final String country;
  final String title;
  final String description;
  final String author;
  final String fullNewsText;
  final String date;
  final String authorImagePath;

  NewsModel(
      {required this.country,
      required this.title,
      required this.description,
      required this.author,
      required this.fullNewsText,
      required this.date,
      required this.authorImagePath,
      required this.imageLink});
}
