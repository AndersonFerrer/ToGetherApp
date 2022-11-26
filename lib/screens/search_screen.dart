import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/variables.dart';
import 'package:redsocial_u2/widgets/photos.dart';
import 'package:redsocial_u2/widgets/custom_search_delegate.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<dynamic> imagesList = [];
  List<dynamic> history = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              readOnly: true,
              keyboardType: TextInputType.text,
              cursorColor: verde,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Buscar',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(
                  Iconsax.search_normal,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
              onTap: () async {
                final data = await showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(history),
                );
                setState(() {
                  imagesList = data[0];
                  if (history.every((item) => item != data[1])) {
                    history.insert(0, data[1]);
                  }
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: Photos(images: imagesList)),
          ],
        ),
      ),
    );
  }
}
