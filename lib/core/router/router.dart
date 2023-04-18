import 'package:go_router/go_router.dart';
import 'package:recharme/features/home/presentation/pages/default_page.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: DefaultPage.name,
      builder: (context, state) => const DefaultPage(),
    ),
  ],
);
