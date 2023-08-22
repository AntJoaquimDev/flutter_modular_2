import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_2/app/categoria/model/category-controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/category',
                    arguments: 'Categoria de Preços@@@');
              },
              child: const Text('Categoria Page'),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pushNamed('/product/produto_:Arroz');
              },
              child: const Text('Produto Page'),
            ),
          ],
        ),
      ),
    );
  }
}
