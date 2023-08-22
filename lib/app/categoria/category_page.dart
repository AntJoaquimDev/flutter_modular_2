import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'model/category-controller.dart';

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
        child: Column(
          children: [
            Text(
              widget.category ?? 'Categoria não envianda.',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            TextButton(
              onPressed: () {
                var controller = Modular.get<CategoryController>();
                print('Controller Hassh ${controller.hashCode}');
              },
              child: const Text('Get Controller'),
            ),
          ],
        ),
      ),
    );
  }
}
