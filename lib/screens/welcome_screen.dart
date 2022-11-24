import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/variables.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              SizedBox(
                width: double.infinity,
                height: 510,
                child: Stack(
                  children: [
                    const Positioned(
                      top: 10,
                      left: 50,
                      child: Icon(
                        Iconsax.star1,
                        color: verde,
                        size: 32,
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      left: 70,
                      child: Icon(
                        Iconsax.star1,
                        color: verde,
                        size: 48,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2014/07/31/22/50/photographer-407068__340.jpg',
                          width: 200,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2017/02/28/08/32/girl-2105155__340.jpg',
                          height: 250,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2015/07/28/03/27/cheerleader-863890__340.jpg',
                          height: 250,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2016/11/23/17/25/woman-1853939__340.jpg',
                          width: 200,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 50,
                      right: 60,
                      child: Icon(
                        Iconsax.star1,
                        color: verde,
                        size: 32,
                      ),
                    ),
                    const Positioned(
                      bottom: 10,
                      right: 30,
                      child: Icon(
                        Iconsax.star1,
                        color: verde,
                        size: 48,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Conecta con el resto del mundo!',
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                  textStyle: const TextStyle(
                    height: 1.2,
                  ),
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                  color: verdeOscuro,
                  decorationColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: verde,
                  ),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  onPressed: () {},
                  disabledColor: verdeClaro,
                  elevation: 1,
                  child: Text(
                    'Iniciar sesión',
                    style: GoogleFonts.poppins(color: verde, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                disabledColor: verdeClaro,
                color: verde,
                elevation: 1,
                child: Text(
                  'Crear una cuenta',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
