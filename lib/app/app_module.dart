import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_2/app/categoria/category_module.dart';
import 'package:flutter_modular_2/app/produto/produto_module.dart';
import 'package:flutter_modular_2/app/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const SplashPage()),
        ModuleRoute('/category', module: CategoryModule()),
        ModuleRoute('/product', module: ProdutoModule())
      ];
}
