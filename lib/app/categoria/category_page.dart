import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String? category;

  const CategoryPage({super.key, required this.category})

      ///categoria=args.data,
      : super();

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categoria',
        ),
      ),
      body: Center(
        child: Text(
          widget.category ?? 'Categoria não envianda.',
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
    );
  }
}
