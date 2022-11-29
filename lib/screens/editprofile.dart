// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:redsocial_u2/index.dart';

import 'package:redsocial_u2/widgets/snapbar.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  final imgController = TextEditingController(text: Preferences.img);
  final nombreController = TextEditingController(text: Preferences.nombre);
  final apellidoController = TextEditingController(text: Preferences.apellido);
  final celularController = TextEditingController(text: Preferences.celular);
  final ciudadController = TextEditingController(text: Preferences.ciudad);
  final paisController = TextEditingController(text: Preferences.pais);
  final portadaController = TextEditingController(text: Preferences.portada);
  final usuarioController = TextEditingController(text: Preferences.usuario);

  guardar() {
    Preferences.img = imgController.text;
    Preferences.apellido = apellidoController.text;
    Preferences.nombre = nombreController.text;
    Preferences.ciudad = ciudadController.text;
    Preferences.celular = celularController.text;
    Preferences.portada = portadaController.text;
    Preferences.usuario = usuarioController.text;
    Preferences.pais = paisController.text;
    Preferences.apellido = apellidoController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil', style: GoogleFonts.poppins(fontSize: 28)),
        centerTitle: true,
        toolbarHeight: 50,
        /* leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.cancel_outlined,
                size: 32,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ), */
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 24, right: 24),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(Preferences.img),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            style: GoogleFonts.poppins(
                                color: (Preferences.theme)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: _inputDecoration(
                              label: 'Nombre',
                              hintText: 'Nombre',
                              /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                            ),
                            cursorColor: verdeClaro,
                            controller: nombreController,
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            style: GoogleFonts.poppins(
                                color: (Preferences.theme)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: _inputDecoration(
                              label: 'Apellido',
                              hintText: 'Apellido',
                              /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                            ),
                            cursorColor: verdeClaro,
                            controller: apellidoController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      style: GoogleFonts.poppins(
                          color:
                              (Preferences.theme) ? Colors.white : Colors.black,
                          fontSize: 16),
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                      decoration: _inputDecoration(
                        label: 'Foto de Perfil',
                        hintText: 'Foto de Perfil',
                        /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                      ),
                      cursorColor: verdeClaro,
                      controller: imgController,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      style: GoogleFonts.poppins(
                          color:
                              (Preferences.theme) ? Colors.white : Colors.black,
                          fontSize: 16),
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                      decoration: _inputDecoration(
                        label: 'Foto de Portada',
                        hintText: 'Foto de Portada',
                        /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                      ),
                      cursorColor: verdeClaro,
                      controller: portadaController,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            style: GoogleFonts.poppins(
                                color: (Preferences.theme)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: _inputDecoration(
                              label: 'Celular',
                              hintText: 'Celular',
                              /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                            ),
                            cursorColor: verdeClaro,
                            controller: celularController,
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            style: GoogleFonts.poppins(
                                color: (Preferences.theme)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: _inputDecoration(
                              label: 'Usuario',
                              hintText: 'Usuario',
                              /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                            ),
                            cursorColor: verdeClaro,
                            controller: usuarioController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            style: GoogleFonts.poppins(
                                color: (Preferences.theme)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: _inputDecoration(
                              label: 'País',
                              hintText: 'País',
                              /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                            ),
                            cursorColor: verdeClaro,
                            controller: paisController,
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            style: GoogleFonts.poppins(
                                color: (Preferences.theme)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16),
                            autocorrect: false,
                            keyboardType: TextInputType.text,
                            decoration: _inputDecoration(
                              label: 'Ciudad',
                              hintText: 'Ciudad',
                              /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                            ),
                            cursorColor: verdeClaro,
                            controller: ciudadController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Sexo: ',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                    ),
                    RadioListTile(
                      activeColor: Colors.green,
                      value: 1,
                      groupValue: Preferences.genero,
                      title: Text('Masculino'),
                      onChanged: (value) {
                        Preferences.genero = value ?? 1;
                        setState(() {});
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.green,
                      value: 2,
                      groupValue: Preferences.genero,
                      title: Text('Femenino'),
                      onChanged: (value) {
                        Preferences.genero = value ?? 2;
                        setState(() {});
                      },
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          guardar();
                          CustomSnapBar.verSnackBar(
                              'Datos actualizados correctamente');
                          /*  Navigator.pop(context); */
                        });
                      },
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: verde),
                          child: Center(
                            child: Text(
                              'Guardar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(
      {final String? hintText,
      final Widget? prefixIcon,
      final String? label,
      final Widget? suffixIcon}) {
    return InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Color.fromARGB(120, 158, 158, 158)),
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(15)),
        hintText: hintText,
        labelText: label,
        floatingLabelStyle:
            GoogleFonts.poppins(fontSize: 24, color: Colors.grey),
        labelStyle: GoogleFonts.poppins(fontSize: 18, color: verdeClaro),
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 18));
  }
}
