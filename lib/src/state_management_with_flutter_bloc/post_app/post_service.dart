import 'package:dio/dio.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/post_app/post_model.dart';

class PostService {
  late Dio _dio;

  PostService() {
    _dio = Dio();
  }

  Future<List<PostModel>> fechAllPost() async {
    Response response =
        await _dio.get("https://jsonplaceholder.typicode.com/posts");
    List<PostModel> listDAta = [];
    for (var i = 0; i < response.data.length; i++) {
      listDAta.add(PostModel.fromJson(response.data[i]));
    }
    return listDAta;
  }
}
