import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Photos1 extends StatelessWidget {
  const Photos1({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2022/11/21/22/08/paragliding-7608345_960_720.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2014/09/27/17/35/dandelion-463928__180.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/12/11/15/34/lion-3012515__340.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/04/01/10/40/swans-1299971__340.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 4,
          mainAxisCellCount: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/11/12/16/39/lamborghini-1819204__340.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
              image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/11/12/16/39/lamborghini-1819204__340.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
