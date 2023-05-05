import 'package:flutter/material.dart';

import '../../core/colors/const_widget.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
         width: 106,height: 160,   
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
            image:const DecorationImage(
                 fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w440_and_h660_face/1EnBjTJ5utgT1OXYBZ8YwByRCzP.jpg'))),
      ),
    );
  }
}
