import 'package:flutter/material.dart';
import 'package:flutter_application_1/post/view/post_page.dart';

void main() {
  runApp(const MyApp());
}

/// Отключает "резиновый" stretch-overscroll (растягивание контента),
/// который Android 12+ включает по умолчанию.
class NoStretchScrollBehavior extends MaterialScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post Page',
      scrollBehavior: NoStretchScrollBehavior(),
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PostPage(),
    );
  }
}
