import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_2/app/categoria/category_page.dart';

class CategoryModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => CategoryPage(
                  category: args.data,
                )),
      ];
}
