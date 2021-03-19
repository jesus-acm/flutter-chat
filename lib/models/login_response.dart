// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:chat/models/usuario.dart';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    LoginResponse({
        this.ok,
        this.usuario,
        this.token,
    });

    bool ok;
    Usuario usuario;
    String token;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        ok: json["ok"] == null ? null : json["ok"],
        usuario: json["usuario"] == null ? null : Usuario.fromJson(json["usuario"]),
        token: json["token"] == null ? null : json["token"],
    );

    Map<String, dynamic> toJson() => {
        "ok": ok == null ? null : ok,
        "usuario": usuario == null ? null : usuario.toJson(),
        "token": token == null ? null : token,
    };
}