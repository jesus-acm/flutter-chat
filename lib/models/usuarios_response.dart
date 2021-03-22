// To parse this JSON data, do
//
//     final usuariosResponse = usuariosResponseFromJson(jsonString);

import 'dart:convert';

import 'package:chat/models/usuario.dart';

UsuariosResponse usuariosResponseFromJson(String str) => UsuariosResponse.fromJson(json.decode(str));

String usuariosResponseToJson(UsuariosResponse data) => json.encode(data.toJson());

class UsuariosResponse {
    UsuariosResponse({
        this.ok,
        this.usuarios,
        this.desde,
    });

    bool ok;
    List<Usuario> usuarios;
    int desde;

    factory UsuariosResponse.fromJson(Map<String, dynamic> json) => UsuariosResponse(
        ok: json["ok"] == null ? null : json["ok"],
        usuarios: json["usuarios"] == null ? null : List<Usuario>.from(json["usuarios"].map((x) => Usuario.fromJson(x))),
        desde: json["desde"] == null ? null : json["desde"],
    );

    Map<String, dynamic> toJson() => {
        "ok": ok == null ? null : ok,
        "usuarios": usuarios == null ? null : List<dynamic>.from(usuarios.map((x) => x.toJson())),
        "desde": desde == null ? null : desde,
    };
}
