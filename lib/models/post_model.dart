class Post {
  final int id;
  // final int userid;
  final String title;
  final String body;

  Post(
      {required this.id,
      // required this.userid,
      required this.title,
      required this.body});

  factory Post.fromjson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      // userid: json['userid'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
