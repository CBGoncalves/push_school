import 'package:go_router/go_router.dart';
import 'package:pushschool/screens/courses_screen.dart';
import 'package:pushschool/screens/home_screen.dart';
import 'package:pushschool/screens/login_screen.dart';
import 'package:pushschool/screens/register_screen.dart';

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
    )
  ],
  initialLocation: '/',
);
