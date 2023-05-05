import 'package:flutter/widgets.dart';
import 'package:netflix/core/colors/const_widget.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w440_and_h660_face/rM5Y0ziZbmpkqW1db2HK3xrzTXj.jpg';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Movies & Tv'),
        boxForSpaceHeight,
        Expanded(
            child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1/1.4,
          children: List.generate(20, (index) => const MainCard()),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
     borderRadius: BorderRadius.all(Radius.circular(5)),
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
