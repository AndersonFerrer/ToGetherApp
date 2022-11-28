import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Photos extends StatelessWidget {
  final List<dynamic>? images;

  const Photos({super.key, this.images});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> imagesURL;
    if (images!.isNotEmpty) {
      imagesURL = images!.map((image) => image['src']['portrait']).toList();
    } else {
      imagesURL = [
        'https://cdn.pixabay.com/photo/2022/11/21/22/08/paragliding-7608345_960_720.jpg',
        'https://cdn.pixabay.com/photo/2014/09/27/17/35/dandelion-463928__180.jpg',
        'https://cdn.pixabay.com/photo/2017/12/11/15/34/lion-3012515__340.jpg',
        'https://cdn.pixabay.com/photo/2016/04/01/10/40/swans-1299971__340.jpg',
        'https://cdn.pixabay.com/photo/2016/11/12/16/39/lamborghini-1819204__340.jpg',
      ];
    }

    return GridView.custom(
      padding: EdgeInsets.only(top: 12, bottom: 0),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 7,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: const [
          QuiltedGridTile(3, 4),
          QuiltedGridTile(6, 3),
          QuiltedGridTile(3, 2),
          QuiltedGridTile(3, 2),
          QuiltedGridTile(2, 7),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: NetworkImage(imagesURL[index % imagesURL.length]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
