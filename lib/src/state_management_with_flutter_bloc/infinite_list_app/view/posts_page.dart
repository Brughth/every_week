import 'package:every_day/src/state_management_with_flutter_bloc/infinite_list_app/bloc/post_bloc.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/infinite_list_app/view/posts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: BlocProvider(
          create: (_) =>
              PostBloc(httpClient: http.Client())..add(PostFetched()),
          child: PostList()),
    );
  }
}
