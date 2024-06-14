import 'package:expense_tracker/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Months'),
      actions: [
        Row(
          children: [
            ElevatedButton.icon(
                icon: Icon(Icons.add_chart_rounded),
                onPressed: () {},
                label: Text('Add Transaction')),
            GestureDetector(
              onTap: () {
                Provider.of<ThemeProvider>(context).toggleTheme();
              },
              child: Center(child: Text('Mode')),
            ),
          ],
        )
      ],
    ));
  }
}
