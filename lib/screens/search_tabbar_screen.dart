import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/variables.dart';
import 'package:redsocial_u2/widgets/photos.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Buscar',
                  prefixIcon: const Icon(
                    Iconsax.search_normal,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: verde,
                tabs: [
                  Tab(text: 'Todos'),
                  Tab(text: 'Personas'),
                  Tab(text: 'Posts'),
                  Tab(text: 'Fotos'),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Text('Hello'),
                    Text('World'),
                    Photos(),
                    Photos(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
