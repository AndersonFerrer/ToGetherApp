// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService extends ChangeNotifier {
  final String _baseUrl = 'identitytoolkit.googleapis.com';
  final String _firebasekey = 'AIzaSyDQ3MSQqOak08T3_jGnizAectqSFR9qy00';
  final storage = FlutterSecureStorage();
  Future<String?> createUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };

    final url =
        Uri.https(_baseUrl, '/v1/accounts:signUp', {'key': _firebasekey});

    final response = await http.post(url, body: json.encode(authData));

    final Map<String, dynamic> decodeResponse = json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResponse['idToken']);
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }

  //LOGIN
  Future<String?> login(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password,
    };

    final url = Uri.https(
        _baseUrl, '/v1/accounts:signInWithPassword', {'key': _firebasekey});

    final response = await http.post(url, body: json.encode(authData));

    final Map<String, dynamic> decodeResponse = json.decode(response.body);

    if (decodeResponse.containsKey('idToken')) {
      storage.write(key: 'token', value: decodeResponse['idToken']);
      return null;
    } else {
      return decodeResponse['error']['message'];
    }
  }

  //CERRAR SESION

  Future cerrarSesion() async {
    await storage.delete(key: 'token');
    return;
  }

  //VERIFICAR EXISTENCIA DEL TOKEN
  Future<String> leerToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
