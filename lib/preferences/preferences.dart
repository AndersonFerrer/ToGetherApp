import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _ciudad = '';
  static String _pais = '';
  static int _genero = 1;
  static String _descripcion = '';
  static String _email = '';
  static String _celular = '';
  static String _twitter = '';
  static String _web = '';
  static bool _theme = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //SET Y GET

  //IMG

  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  //NOMBRE

  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //APELLIDO

  static String get apellido {
    return _prefs.getString('apellido') ?? _apellido;
  }

  static set apellido(String apellido) {
    _apellido = apellido;
    _prefs.setString('apellido', apellido);
  }

  //CIUDAD

  static String get ciudad {
    return _prefs.getString('ciudad') ?? _ciudad;
  }

  static set ciudad(String ciudad) {
    _ciudad = ciudad;
    _prefs.setString('ciudad', ciudad);
  }

  //PAIS

  static String get pais {
    return _prefs.getString('pais') ?? _pais;
  }

  static set pais(String pais) {
    _pais = pais;
    _prefs.setString('pais', pais);
  }

  //CIUDAD

  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int genero) {
    _genero = genero;
    _prefs.setInt('genero', genero);
  }

  //DESCRIPCION

  static String get descripcion {
    return _prefs.getString('descripcion') ?? _descripcion;
  }

  static set descripcion(String descripcion) {
    _descripcion = descripcion;
    _prefs.setString('descripcion', descripcion);
  }

  //EMAIL

  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }

  //CELULAR

  static String get celular {
    return _prefs.getString('celular') ?? _celular;
  }

  static set celular(String celular) {
    _celular = celular;
    _prefs.setString('celular', celular);
  }

  //TWITTER

  static String get twitter {
    return _prefs.getString('twitter') ?? _twitter;
  }

  static set twitter(String twitter) {
    _twitter = twitter;
    _prefs.setString('twitter', twitter);
  }

  //WEB SITE

  static String get web {
    return _prefs.getString('web') ?? _web;
  }

  static set web(String web) {
    _web = web;
    _prefs.setString('web', web);
  }

  //THEME

  static bool get theme {
    return _prefs.getBool('theme') ?? _theme;
  }

  static set theme(bool theme) {
    _theme = theme;
    _prefs.setBool('theme', theme);
  }
}
