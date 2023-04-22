import 'package:go_router/go_router.dart';

import '../../presentation/home/pages/default_page.dart';
import '../../presentation/recarga/pages/recarga_form_page.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: DefaultPage.name,
      builder: (context, state) => const DefaultPage(),
    ),
    
    GoRoute(
      path: '/recargaFormPage',
      name: RecargaFormPage.name,
      builder: (context, state) => const RecargaFormPage(),
    ),
  ],
);
