import 'package:chat/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:chat/models/usuario.dart';
import 'package:chat/global/enviroment.dart';
import 'package:chat/models/mensajes_response.dart';

class ChatService with ChangeNotifier{
  Usuario usuarioPara;
  
  Future<List<Mensaje>> getChat(String usuarioId) async{

    final resp = await http.get('${Enviroment.apiUrl}/mensajes/$usuarioId', 
    headers: {
      'Content-Type': 'application-json',
      'x-token': await AuthService.getToken()
    });

    final mensajesResp = mensajesResponseFromJson(resp.body);

    return mensajesResp.mensajes;
  }
}