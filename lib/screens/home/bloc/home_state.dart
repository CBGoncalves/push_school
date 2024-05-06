part of 'home_bloc.dart';

class HomeState {}

class HomePageOpened extends HomeState {}

class CoursesScreenOpened extends HomeState {}

class ForumOpened extends HomeState {
  final List<Post> postList;

  ForumOpened({
    required this.postList,
  });
}
