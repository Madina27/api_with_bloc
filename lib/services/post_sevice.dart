import 'dart:developer';
import 'package:api_with_bloc/config/api_const.dart';
import 'package:api_with_bloc/models/post_model.dart';
import 'package:dio/dio.dart';

class PostService {
  Future<List<PostModel>> getPosts() async {
    List<PostModel> posts = [];
    try {
      final responce = await Dio().get(ApiConst.api);
      if (responce.statusCode == 200) {
        for (var element in responce.data) {
          final post = PostModel.fromjson(element);
          posts.add(post);
        }
        return posts;
      }
    } catch (e) {
      log(e.toString());
      return posts;
    }
    return posts;
  }
}
