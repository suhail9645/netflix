import 'package:flutter/material.dart';


import '../../core/colors/const_widget.dart';
import 'main_card.dart';
import 'main_title.dart';

class CardRow extends StatelessWidget {
  const CardRow({super.key, required this.title});
 final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              child:  MainTitle(title: title),
            ),
            boxForSpace,
            LimitedBox(
              maxHeight: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(10, (index) => const MainCard()),
              ),
            )
          ],
        );
  }
}