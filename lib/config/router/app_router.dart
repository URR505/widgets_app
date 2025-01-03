import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) => const CupertinoPage(child: HomeScreen()),
  ),
  GoRoute(
      path: '/buttons',
      pageBuilder: (context, state) =>
          const CupertinoPage(child: ButtonsScreen())),
  GoRoute(
    path: '/card',
    pageBuilder: (context, state) => const CupertinoPage(child: CardsScreen()),
  ),
]);
