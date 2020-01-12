import 'package:dio/dio.dart';
import 'package:git_as_api/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:git_as_api/app/modules/home/home_page.dart';

import 'repositories/home_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository(Dio())),
        Bind((i) => HomeController(i.get<HomeRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
