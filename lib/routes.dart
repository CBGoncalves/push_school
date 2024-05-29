import 'package:go_router/go_router.dart';
import 'package:pushschool/http/dtos/post_dto.dart';
import 'package:pushschool/http/dtos/video_dto.dart';
import 'package:pushschool/screens/course/courses_screen.dart';
import 'package:pushschool/screens/course/initial_course_screen.dart';
import 'package:pushschool/screens/forum/forum_post_screen.dart';
import 'package:pushschool/screens/home/home_screen.dart';
import 'package:pushschool/screens/login/login_screen.dart';
import 'package:pushschool/screens/personal_data/personal_data.dart';
import 'package:pushschool/screens/player/video_player_screen.dart';
import 'package:pushschool/screens/register/register_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/courses',
      builder: (context, state) => const CoursesScreen(),
    ),
    GoRoute(
      path: '/post',
      builder: (context, state) {
        final post = state.extra as Post;
        return ForumPostScreen(
          post: post,
        );
      },
    ),
    GoRoute(
      path: '/initial-course',
      builder: (context, state) => const InitialCourseScreen(),
    ),
    GoRoute(
      path: '/player',
      builder: (context, state) {
        final video = state.extra as Video;
        return VideoPlayerScreen(
          video: video,
        );
      },
    ),
    GoRoute(
      path: '/personal-data',
      builder: (context, state) => const PersonalDataScreen(),
    ),
  ],
  initialLocation: '/',
);
