class PostModel {
  PostModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});
  final int userId;
  final int id;
  final String title;
  final String body;

  factory PostModel.fromjson(Map<String, dynamic> json) => PostModel(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        body: json['body'] as String,
      );
}
