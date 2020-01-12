import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:git_as_api/app/modules/models/experiencia_model.dart';

class HomeRepository extends Disposable {
  final Dio dio;

  HomeRepository(this.dio);
  Future getExperiencias() async {
    final response = await dio.get(
        'https://raw.githubusercontent.com/Bwolfs2/git_as_api/master/json/data.json');
    return ExperienciaModel.fromJsonList(json.decode(response.data) as List);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
