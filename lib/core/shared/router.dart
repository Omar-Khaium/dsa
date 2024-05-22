import '../../features/arrays/arrays.dart';
import '../../features/home/home.dart';
// import '../config/config.dart';
import 'shared.dart';

final router = GoRouter(
  initialLocation: HomePage.path,
  routes: [
    GoRoute(
      path: HomePage.path,
      name: HomePage.name,
      pageBuilder: (context, state) => const MaterialPage(
        name: HomePage.name,
        restorationId: HomePage.name,
        child: HomePage(),
      ),
    ),
    GoRoute(
      path: ArraysPage.path,
      name: ArraysPage.name,
      pageBuilder: (context, state) => const MaterialPage(
        name: ArraysPage.name,
        restorationId: ArraysPage.name,
        child: ArraysPage(),
      ),
    ),
  ],
);
