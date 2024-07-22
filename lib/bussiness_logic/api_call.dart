import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_first_application/models/post_model.dart';

class ApiCall {
  Future<void> sendData(Post post) async {
    final response = await http.post(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'title': post.title,
        'body': post.body,
        'userId': post.id.toString(),
      }),
    );
    if (response.statusCode == 200) {
      print("data sent successfully");
    } else {
      throw Exception("Failed");
    }
  }

  List<Post> parsePosts(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    List<Post> postList= parsed.map<Post>((json) => Post.fromjson(json)).toList();

    return postList;
  }

  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('http://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      return parsePosts(response.body);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
