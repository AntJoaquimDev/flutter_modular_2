import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_2/app/categoria/model/category-controller.dart';
import 'package:flutter_modular_2/app/categoria/category_page.dart';
import 'package:flutter_modular_2/app/produto/produto_module.dart';

class CategoryModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => ProdutoModule(), export: true),
        Bind(
          (i) => CategoryController(precoModel: i()),
          isLazy: true,
          isSingleton: false,
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => CategoryPage(
                  category: args.data,
                )),
      ];
}
