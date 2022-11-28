// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/widgets/buttonWidget.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 260,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2022/07/29/05/22/alps-7351077__340.jpg',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 154,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315__340.png'),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () => onPressed!(),
                      icon: Icon(
                        Iconsax.arrow_left_2,
                        color: Colors.white,
                      ),
                    ).frosted(
                      frostColor: Colors.white,
                      blur: 3,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Anderson Ferrer',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 24),
            ),
            Text(
              '@ferrer2801',
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '8',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Publicaci...',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey /* fontWeight: FontWeight.w500 */
                          ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '527',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Seguidores',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey /* fontWeight: FontWeight.w500 */
                          ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '80',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Siguiendo',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey /* fontWeight: FontWeight.w500 */
                          ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    onPressed: () {},
                    texto: 'Editar Perfil',
                    radioBorde: BorderRadius.circular(5),
                    fontsize: 16,
                    border: Colors.grey,
                    width: 140,
                    heigth: 40,
                    textcolor: (Preferences.theme == false)
                        ? Colors.black
                        : Colors.white,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.8, color: Colors.grey)),
                      child: IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            authService.cerrarSesion();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WelcomeScreen(),
                                ),
                                (route) => false);
                          },
                          icon: Icon(
                            Icons.exit_to_app,
                            size: 28,
                          ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Fotos de amigos',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2022/11/14/10/54/sunrise-7591335__340.jpg',
                          width: 200,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2022/10/21/03/29/relationship-7536124__340.jpg',
                              width: 94,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2022/08/02/18/29/happy-7361025__340.jpg',
                              width: 94,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2022/08/14/10/22/couple-7385502__340.jpg',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Videos',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/1.gif',
                          width: 200,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/3.gif',
                              width: 94,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/2.gif',
                              width: 94,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/4.gif',
                          width: 150,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 74,
            )
          ],
        ),
      ),
    );
  }

  final Function? onPressed;
}
