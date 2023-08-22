import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_2/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/:name', child: (context, args) => ProdutoPage()),
      ];
}
