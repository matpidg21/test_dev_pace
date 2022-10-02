import 'package:flutter/material.dart';
import 'package:flutter_application_test_list/presentation/list_items_with_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListItemsWithLogoPage(countItem: 2),
    );
  }
}
