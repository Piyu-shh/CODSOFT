import 'package:expense_tracker/pages/home.dart';
import 'package:expense_tracker/theme/theme.dart';
import 'package:expense_tracker/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) =>
          ThemeProvider(), // Ensure the ThemeProvider instance is returned
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          home: Home(),
          theme: themeProvider.themeData, // Access the current theme data
        );
      },
    );
  }
}
