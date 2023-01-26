import 'dart:convert';

ScanModel scanModelFromMap(String str) => ScanModel.fromJson(json.decode(str));

String scanModelToMap(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  ScanModel({
    required this.id,
    required this.type,
    required this.valor,
  }) {
    if (type.contains('http')) {
      type = 'http';
    } else {
      type = 'geo';
    }
  }

  int id;
  String type;
  String valor;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        type: json["type"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "valor": valor,
      };
}
