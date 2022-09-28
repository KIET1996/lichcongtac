import 'dart:convert';

DepartmentModel departmentModelFromJson(String str) => DepartmentModel.fromJson(json.decode(str));

String departmentModelToJson(DepartmentModel data) => json.encode(data.toJson());

class DepartmentModel {
  DepartmentModel({
    required this.donviId,
    required this.tendonvi,
    required this.trangthai,
    required this.thutu,
    required this.nhom,
    required this.donviChaId,
    this.donviChaTen,
  });

  int donviId;
  String tendonvi;
  bool trangthai;
  int thutu;
  String nhom;
  int donviChaId;
  dynamic donviChaTen;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) => DepartmentModel(
    donviId: json["DONVI_ID"],
    tendonvi: json["TENDONVI"],
    trangthai: json["TRANGTHAI"],
    thutu: json["THUTU"],
    nhom: json["NHOM"],
    donviChaId: json["DONVI_CHA_ID"],
    donviChaTen: json["DONVI_CHA_TEN"],
  );

  Map<String, dynamic> toJson() => {
    "DONVI_ID": donviId,
    "TENDONVI": tendonvi,
    "TRANGTHAI": trangthai,
    "THUTU": thutu,
    "NHOM": nhom,
    "DONVI_CHA_ID": donviChaId,
    "DONVI_CHA_TEN": donviChaTen,
  };
}