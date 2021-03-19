// To parse this JSON data, do
//
//     final usuario = usuarioFromJson(jsonString);

import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
    Usuario({
        this.online,
        this.nombre,
        this.email,
        this.uid,
    });

    bool online;
    String nombre;
    String email;
    String uid;

    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        online: json["online"] == null ? null : json["online"],
        nombre: json["nombre"] == null ? null : json["nombre"],
        email: json["email"] == null ? null : json["email"],
        uid: json["uid"] == null ? null : json["uid"],
    );

    Map<String, dynamic> toJson() => {
        "online": online == null ? null : online,
        "nombre": nombre == null ? null : nombre,
        "email": email == null ? null : email,
        "uid": uid == null ? null : uid,
    };
}
