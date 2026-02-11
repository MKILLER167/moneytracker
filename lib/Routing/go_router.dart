import 'package:go_router/go_router.dart';
import 'package:moneytracker/screens/forgetpassword.dart';
import 'package:moneytracker/screens/homepage.dart';
import 'package:moneytracker/screens/registerpage.dart';
import 'package:moneytracker/screens/loginpage.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginPage()),
    GoRoute(path: '/home', builder: (context, state) => const homepage()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const registerpage(),
    ),
    GoRoute(
      path: '/forgetpassword',
      builder: (context, state) => const forgetpassword(),
    ),
  ],
);
