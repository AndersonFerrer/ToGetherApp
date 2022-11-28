// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/variables.dart';
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
                      HistoriaWidget(),
                      HistoriaWidget(),
                      HistoriaWidget(),
                      HistoriaWidget(),
                      HistoriaWidget(),
                      HistoriaWidget(),
                      HistoriaWidget(),
                      HistoriaWidget(),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              PostWidget(),
              PostWidget(),
              PostWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
