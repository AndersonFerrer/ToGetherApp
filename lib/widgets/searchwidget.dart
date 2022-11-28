import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:redsocial_u2/services/image_service.dart';

class CustomSearchDelegate extends SearchDelegate {
  final List<dynamic> history;

  CustomSearchDelegate(this.history);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.trim().isEmpty) {
      return Container();
    }

    return requestImages(context, query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: history.length,
      itemBuilder: (context, i) {
        final item = history[i];

        return ListTile(
          title: Text(item),
          onTap: () async {
            final imageService = ImageService();
            final data = await imageService.getImageByName(item);
            // ignore: use_build_context_synchronously
            close(context, [data, item]);
          },
        );
      },
    );
  }

  FutureBuilder<dynamic> requestImages(BuildContext context, query) {
    final imageService = ImageService();

    return FutureBuilder(
      future: imageService.getImageByName(query),
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return const ListTile(title: Text('Resultados no encontrados'));
        }

        if (snapshot.hasData) {
          if (snapshot.data.length != 0) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              // add your code here.
              close(context, [snapshot.data, query]);
            });
            return Container();
          }
          return const ListTile(title: Text('Resultados no encontrados'));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
