import 'package:auto_route/auto_route.dart';
import 'package:messanger_app/src/features/app/pages/message_article.dart';
import 'package:messanger_app/src/features/screens/home/home_page.dart';

@MaterialAutoRouter( 
  replaceInRouteName: 'Page,Route', 
  routes:  <AutoRoute>[ 
    AutoRoute(page: HomePage,path: '/', initial: true),
    AutoRoute(page: MessageArticle, path: '/article')
  ]
)

class $AppRouter {}