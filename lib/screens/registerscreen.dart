// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';

import 'package:redsocial_u2/index.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
/*     final loginProvider = Provider.of<LoginProvider>(context); */
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChangeNotifierProvider(
                  create: (context) => LoginProvider(),
                  child: RegisterForm(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ya tienes una cuenta?',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          'Inicia Sesión',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: verdeClaro),
                        )),
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
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
      floatingLabelStyle: GoogleFonts.poppins(fontSize: 24, color: Colors.grey),
      labelStyle: GoogleFonts.poppins(fontSize: 18, color: verdeClaro),
      hintStyle: TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 18));
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool passwordVis = true;

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return SizedBox(
      child: Form(
          key: loginProvider.formkey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage('assets/logo2.png'),
                  width: 150,
                ),
                SizedBox(
                  height: 48,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Registrarse',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    "Create una cuenta para continuar!",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        /* fontWeight: FontWeight.bold, */ fontSize: 20,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 16),
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: verdeClaro,
                        decoration: _inputDecoration(
                          label: 'Nombre',
                          hintText: 'Roberto',
                          /* prefixIcon: Icon(
                                    Icons.email,
                                    color: verdeOscuro,
                                  ), */
                        ),
                        onChanged: (value) => Preferences.nombre = value,
                      ),
                    ),
                    SizedBox(
                      width: 175,
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 16),
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: verdeClaro,
                        decoration: _inputDecoration(
                          label: 'Apellido',
                          hintText: 'Gonzales',
                          /* prefixIcon: Icon(
                                    Icons.email,
                                    color: verdeOscuro,
                                  ), */
                        ),
                        onChanged: (value) => Preferences.apellido = value,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: verdeClaro,
                  decoration: _inputDecoration(
                    label: 'Email',
                    hintText: 'flutter@dev.com',
                    /* prefixIcon: Icon(
                                  Icons.email,
                                  color: verdeOscuro,
                                ), */
                  ),
                  onChanged: (value) => loginProvider.email = value,
                  validator: (value) {
                    String pattern =
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regExp = RegExp(pattern);
                    return regExp.hasMatch(value ?? '')
                        ? null
                        : 'Correo no válido';
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                  autocorrect: false,
                  obscureText: passwordVis,
                  keyboardType: TextInputType.text,
                  decoration: _inputDecoration(
                    label: 'Password',
                    hintText: '********',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVis = !passwordVis;
                          });
                        },
                        icon: Icon(
                            !passwordVis ? Iconsax.eye : Iconsax.eye_slash)),
                    /*  prefixIcon: Icon(
                                  Icons.key,
                                  color: verdeOscuro,
                                ), */
                  ),
                  cursorColor: verdeClaro,
                  onChanged: (value) => loginProvider.password = value,
                  validator: (value) {
                    return (value != null && value.length >= 8)
                        ? null
                        : 'La contraseña debe tener mas de8 carácteres';
                  },
                ),
                SizedBox(
                  height: 48,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  onPressed: loginProvider.isloading
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();
                          final authService =
                              Provider.of<AuthService>(context, listen: false);
                          if (!loginProvider.isvalidForm()) return;
                          loginProvider.isloading = true;
                          final String? errorMessage =
                              await authService.createUser(
                                  loginProvider.email, loginProvider.password);

                          if (errorMessage == null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BodyScreen()));
                          } else {
                            loginProvider.isloading = true;
                          }
                        },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  disabledColor: verdeClaro,
                  color: verde,
                  elevation: 1,
                  child: (loginProvider.isloading)
                      ? CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          'Regístrate',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 20),
                        ),
                )
              ],
            ),
          )),
    );
  }
}
