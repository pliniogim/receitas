import 'package:flutter/material.dart';
import 'package:receitas/screens/categories.dart';
import 'package:receitas/screens/favorites.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Receitas'),
          bottom: const TabBar(
            tabs: [
            Tab(icon: Icon(Icons.category,), text: 'Categories',),
            Tab(icon: Icon(Icons.favorite,), text: 'Favorites',),
          ],
          ),
        ),
        body: const TabBarView(
          children: [
            Categories(), Favorites(),
          ],
        ),
      ),
    );
  }
}
