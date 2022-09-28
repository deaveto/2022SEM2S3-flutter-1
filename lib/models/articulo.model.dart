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
      urlToImage: json["urlToImage"] ??
          'https://lh3.googleusercontent.com/-UzeWN48Oryw/X2uNf_lDknI/AAAAAAAACYU/amYx3mhO1F0R1cy1UOwyHXhpQkQPSRYSgCLcBGAsYHQ/w635-h396/logo-tesla.jpg');
}
