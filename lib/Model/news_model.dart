class NewsModel {
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  NewsModel({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      source: json['source'] != null
          ? Source.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] != null
          ? DateTime.tryParse(json['publishedAt'] as String)
          : null,
      content: json['content'] as String?,
    );
  }
}

class Source {
  final String? id;
  final String? name;

  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );
  }
}
