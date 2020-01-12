import 'package:git_as_api/app/modules/models/experiencia_model.dart';
import 'package:mobx/mobx.dart';

import 'repositories/home_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final HomeRepository _homeRepository;
  _HomeBase(this._homeRepository) {
    _homeRepository.getExperiencias().then((data) {
      experiencias = data;
    });
  }

  @observable
  List<ExperienciaModel> experiencias = [];
}
