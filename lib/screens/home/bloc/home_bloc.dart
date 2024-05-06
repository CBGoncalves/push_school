import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushschool/http/repositorys/post_repository.dart';

import '../../../http/dtos/post_dto.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<HomeInitialized>(_homeInitialized);
    on<CoursesScreenInitialized>(_coursesScreenInitialized);
    on<ForumInitialized>(_forumInitialized);
  }

  Future<void> _homeInitialized(
    HomeInitialized event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomePageOpened());
  }

  Future<void> _coursesScreenInitialized(
    CoursesScreenInitialized event,
    Emitter<HomeState> emit,
  ) async {
    emit(CoursesScreenOpened());
  }

  Future<void> _forumInitialized(
    ForumInitialized event,
    Emitter<HomeState> emit,
  ) async {
    PostRepository postRepository = PostRepository();

    var postList = await postRepository.getPost();

    print(postList);

    emit(ForumOpened(postList: postList));
  }
}
