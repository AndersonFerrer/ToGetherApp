// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';

import 'package:redsocial_u2/widgets/historia_widget.dart';
import 'package:redsocial_u2/widgets/postWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 90),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 4),
                child: CustomAppBar(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    children: [
                      Stack(children: [
                        HistoriaWidget(
                          nombre: 'Tu historia',
                          image:
                              'https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg',
                        ),
                        Positioned(
                          right: 7,
                          bottom: 40,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: verdeClaro,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                )),
                            child: Icon(
                              Iconsax.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ]),
                      HistoriaWidget(
                        nombre: 'Ana',
                        image:
                            'https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Carlos',
                        image:
                            'https://cdn.pixabay.com/photo/2012/03/04/01/01/father-22194_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Flor',
                        image:
                            'https://cdn.pixabay.com/photo/2016/06/11/12/13/pink-hair-1450045_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Nicolas',
                        image:
                            'https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Abraham',
                        image:
                            'https://cdn.pixabay.com/photo/2015/06/19/09/39/lonely-814631_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Carolina',
                        image:
                            'https://cdn.pixabay.com/photo/2016/11/14/05/29/girl-1822702_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Bella',
                        image:
                            'https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_960_720.jpg',
                      ),
                      HistoriaWidget(
                        nombre: 'Tania',
                        image:
                            'https://cdn.pixabay.com/photo/2014/12/16/22/25/woman-570883_960_720.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              PostWidget(
                name: 'Michael Chambilla',
                photo:
                    'https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2022/09/25/09/54/kimono-7477942__340.jpg',
                date: 'Miercoles, 12:30 am',
                likes: 300,
              ),
              PostWidget(
                name: 'Karla Perez',
                photo:
                    'https://cdn.pixabay.com/photo/2020/06/26/03/54/young-5341577_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2017/08/25/09/19/highway-2679490_960_720.jpg',
                date: '4 horas',
                likes: 78,
              ),
              PostWidget(
                name: 'Karina Linares',
                photo:
                    'https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2020/04/14/10/35/lemur-5041881__340.jpg',
                date: 'Ayer',
                likes: 20,
              ),
              PostWidget(
                name: 'Ben Royce',
                photo:
                    'https://cdn.pixabay.com/photo/2020/10/04/10/43/horse-5625922_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2017/10/10/07/48/hills-2836301_960_720.jpg',
                date: 'Ahora',
                likes: 13,
              ),
              PostWidget(
                name: 'Tito Bueno',
                photo:
                    'https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2016/06/29/21/14/women-1487825__340.jpg',
                date: 'Domingo, 3:00 pm',
                likes: 245,
              ),
              PostWidget(
                name: 'Rosa Benavente',
                photo:
                    'https://cdn.pixabay.com/photo/2017/04/05/20/38/girl-2206248_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2017/08/25/19/11/driving-2681097__340.jpg',
                date: 'Ayer',
                likes: 126,
              ),
              PostWidget(
                name: 'Anderson Little',
                photo:
                    'https://cdn.pixabay.com/photo/2019/01/10/12/20/animal-3925260_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2016/11/23/18/17/men-1854191__340.jpg',
                date: '2 horas',
                likes: 450,
              ),
              PostWidget(
                name: 'Lalo King',
                photo:
                    'https://cdn.pixabay.com/photo/2018/03/27/00/33/music-3264716_960_720.jpg',
                image:
                    'https://cdn.pixabay.com/photo/2018/04/13/07/44/siblings-3315770__340.jpg',
                date: 'Ahora',
                likes: 38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
