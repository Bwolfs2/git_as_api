// To parse this JSON data, do
//
//     final experienciaModel = experienciaModelFromJson(jsonString);

import 'dart:convert';

class ExperienciaModel {
    final String cargo;
    final String nomeEmpresa;
    final String periodo;
    final String duracao;
    final String localidade;
    final String dDuracao;

    ExperienciaModel({
        this.cargo,
        this.nomeEmpresa,
        this.periodo,
        this.duracao,
        this.localidade,
        this.dDuracao,
    });

    ExperienciaModel copyWith({
        String cargo,
        String nomeEmpresa,
        String periodo,
        String duracao,
        String localidade,
        String dDuracao,
    }) => 
        ExperienciaModel(
            cargo: cargo ?? this.cargo,
            nomeEmpresa: nomeEmpresa ?? this.nomeEmpresa,
            periodo: periodo ?? this.periodo,
            duracao: duracao ?? this.duracao,
            localidade: localidade ?? this.localidade,
            dDuracao: dDuracao ?? this.dDuracao,
        );

    factory ExperienciaModel.fromJson(String str) => ExperienciaModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ExperienciaModel.fromMap(Map<String, dynamic> json) => ExperienciaModel(
        cargo: json["Cargo"],
        nomeEmpresa: json["NomeEmpresa"],
        periodo: json["Periodo"],
        duracao: json["Duracao"] == null ? null : json["Duracao"],
        localidade: json["Localidade"],
        dDuracao: json["DDuracao"] == null ? null : json["DDuracao"],
    );

    Map<String, dynamic> toMap() => {
        "Cargo": cargo,
        "NomeEmpresa": nomeEmpresa,
        "Periodo": periodo,
        "Duracao": duracao == null ? null : duracao,
        "Localidade": localidade,
        "DDuracao": dDuracao == null ? null : dDuracao,
    };

     static List<ExperienciaModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<ExperienciaModel>(
            (item) => ExperienciaModel.fromMap(item))
        .toList();
  }
}
