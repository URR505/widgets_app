import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    pageBuilder: (context, state) => const CupertinoPage(child: HomeScreen()),
  ),
  GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      pageBuilder: (context, state) =>
          const CupertinoPage(child: ButtonsScreen())),
  GoRoute(
    path: '/card',
    name: CardsScreen.name,
    pageBuilder: (context, state) => const CupertinoPage(child: CardsScreen()),
  ),
  GoRoute(
    path: '/progress',
    name: ProgressScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: ProgressScreen()),
  ),
  GoRoute(
    path: '/snackbars',
    name: SnackbarScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: SnackbarScreen()),
  ),
]);
