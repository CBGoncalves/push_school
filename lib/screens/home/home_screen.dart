import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushschool/screens/configuration/config_screen.dart';
import 'package:pushschool/screens/course/courses_screen.dart';
import 'package:pushschool/screens/home/home_init_screen.dart';
import 'package:pushschool/screens/loading/loading_screen.dart';
import '../forum/forum_screen.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..add(HomeInitialized()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomePageOpened) {
          return const HomeInitScreen();
        } else if (state is CoursesScreenOpened) {
          return const CoursesScreen();
        } else if (state is ForumOpened) {
          return ForumScreen(
            postList: state.postList,
          );
        } else if (state is ConfigScreenOpened) {
          return const ConfigScreen();
        }
        return const LoadingScreen();
      },
    );
  }
}
