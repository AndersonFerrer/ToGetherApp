import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';

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
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 6),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: TextFormField(
                  readOnly: true,
                  keyboardType: TextInputType.text,
                  cursorColor: verde,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Buscar',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: const Icon(
                      Iconsax.search_normal,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: (!Preferences.theme)
                        ? Colors.grey[100]
                        : Colors.grey[900],
                  ),
                  onTap: () async {
                    final data = await showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(history),
                    );
                    if (data != null) {
                      setState(() {
                        imagesList = data[0];
                        if (history.every((item) => item != data[1])) {
                          history.insert(0, data[1]);
                        }
                      });
                    }
                  },
                ),
              ),
            ),
            Expanded(child: Photos(images: imagesList)),
          ],
        ),
      ),
    );
  }
}
