// To parse this JSON data, do
//
//     final hospitals = hospitalsFromJson(jsonString);

import 'dart:convert';

List<Hospitals> hospitalsFromJson(String str) => List<Hospitals>.from(json.decode(str).map((x) => Hospitals.fromJson(x)));

String hospitalsToJson(List<Hospitals> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Hospitals {
  String? name;
  String? address;
  String? region;
  String? phone;
  String? province;

  Hospitals({
    this.name,
    this.address,
    this.region,
    this.phone,
    this.province,
  });

  factory Hospitals.fromJson(Map<String, dynamic> json) => Hospitals(
    name: json["name"],
    address: json["address"],
    region: json["region"],
    phone: json["phone"],
    province: json["province"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "address": address,
    "region": region,
    "phone": phone,
    "province": province,
  };
}
