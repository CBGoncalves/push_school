import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pushschool/http/repositorys/comment_repository.dart';
import 'package:pushschool/http/repositorys/post_repository.dart';

import '../../../http/dtos/post_dto.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostRepository postRepository = PostRepository();
  final CommentRepository commentRepository = CommentRepository();

  HomeBloc() : super(HomeState()) {
    on<HomeInitialized>(_homeInitialized);
    on<CoursesScreenInitialized>(_coursesScreenInitialized);
    on<ForumInitialized>(_forumInitialized);
    on<ConfigInitialized>(_configInitialized);
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
    try {
      var postList = await postRepository.getPost();

      for (var item in postList) {
        item.comments =
            await commentRepository.getCommentsByPostId(int.parse(item.idPost));
      }

      emit(
        ForumOpened(
          postList: postList,
        ),
      );
    } catch (e) {
      print('Erro ao obter posts: $e');
    }
  }

  Future<void> _configInitialized(
    ConfigInitialized event,
    Emitter<HomeState> emit,
  ) async {
    emit(ConfigScreenOpened());
  }
}
