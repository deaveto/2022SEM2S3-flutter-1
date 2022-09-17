class ArticuloModels {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  ArticuloModels(
      {required this.author,
      required this.content,
      required this.description,
      required this.publishedAt,
      required this.title,
      required this.url,
      required this.urlToImage});
  factory ArticuloModels.fromJson(Map<String, dynamic> json) => ArticuloModels(
      author: json["author"] ?? '',
      content: json["content"] ?? '',
      description: json["description"] ?? '',
      publishedAt: json["publishedAt"] ?? '',
      title: json["title"] ?? '',
      url: json["url"] ?? '',
      urlToImage: json["urlToImage"] ?? '');
}
