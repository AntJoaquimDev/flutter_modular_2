import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
                child: const Text('Categoria Page'))
          ],
        ),
      ),
    );
  }
}
