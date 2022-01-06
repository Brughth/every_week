import 'package:every_day/src/state_management_with_flutter_bloc/counter_app/bloc/counter_bloc.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/counter_app/counter_page.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/counter_app/cubit/counter_cubit.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/infinite_list_app/view/posts_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    //blocObserver: SimpleBlocObserver();
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Every Day',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const PostPage(),
    );
    // return BlocProvider<CounterBlockBloc>(
    //   create: (context) => CounterBlockBloc(),
    //   child: MaterialApp(
    //     title: 'Every Day',
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //       primaryColor: Colors.white,
    //       backgroundColor: Colors.white,
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: const CounterPage(),
    //   ),
    // );
  }
}
