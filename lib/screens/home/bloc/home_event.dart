part of 'home_bloc.dart';

sealed class HomeEvent {
  const HomeEvent();
}

class HomeInitialized extends HomeEvent {}

class CoursesScreenInitialized extends HomeEvent {}

class ForumInitialized extends HomeEvent {}

class ConfigInitialized extends HomeEvent {}
