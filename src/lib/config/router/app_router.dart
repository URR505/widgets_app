import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/grids/grids_screen.dart';
import 'package:widgets_app/presentation/screens/randomWord/random_word_screen.dart';
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
  GoRoute(
    path: '/animated',
    name: AnimatedScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: AnimatedScreen()),
  ),
  GoRoute(
    path: '/ui-controls',
    name: UiControlsScreens.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: UiControlsScreens()),
  ),
  GoRoute(
    path: '/tutorial',
    name: AppTutorialScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: AppTutorialScreen()),
  ),
  GoRoute(
    path: '/infinite',
    name: InfiniteScrollScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: InfiniteScrollScreen()),
  ),
  GoRoute(
    path: '/counter',
    name: CounterScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: CounterScreen()),
  ),
  GoRoute(
    path: '/theme-changer',
    name: ThemeChangerScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: ThemeChangerScreen()),
  ),
  GoRoute(
    path: '/tabs',
    name: TabsScreen.name,
    pageBuilder: (context, state) => const CupertinoPage(child: TabsScreen()),
  ),
  GoRoute(
    path: '/grids',
    name: GridScreen.name,
    pageBuilder: (context, state) => CupertinoPage(child: GridScreen()),
  ),
  GoRoute(
    path: '/random-word',
    name: RandomWordScreen.name,
    pageBuilder: (context, state) =>
        const CupertinoPage(child: RandomWordScreen()),
  ),
]);
