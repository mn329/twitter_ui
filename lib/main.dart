import 'package:flutter/material.dart';
import 'package:twitter_ui/theme/app_theme.dart';
import 'package:twitter_ui/view/home_view.dart';

void main() {
  runApp(const TwitterApp());
}

class TwitterApp extends StatelessWidget {
  const TwitterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter UI',
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
