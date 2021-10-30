import 'package:auto_route/annotations.dart';
import 'package:white_whistle/presentation/home/home_page.dart';
import 'package:white_whistle/utils/paths/router.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<HomePage>(
      page: HomePage,
      path: homePath,
      initial: true,
    ),
  ],
)

/// @nodoc
class $AppRouter {}
