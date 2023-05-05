import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/const_widget.dart';
import 'package:netflix/presentation/home/widget/number_card.dart';
import 'package:netflix/presentation/widgets/main_card_row.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

import '../widgets/custom_button.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, child) =>
            NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  CardRow(
                    title: 'Released In Past Year',
                  ),
                  CardRow(
                    title: 'Trending Now',
                  ),
                  NumberRow(
                    title: 'Top 10 Tv Shows In India Today ',
                  ),
                  CardRow(
                    title: 'Tense Dramas',
                  ),
                  CardRow(
                    title: 'South Indian Cinima',
                  ),
                ],
              ),
              scrollNotifier.value
                  ? AnimatedContainer(
                    duration:const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 70,
                      color: Colors.black.withOpacity(0.6),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI',
                                  height: 30,
                                  width: 30,
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                boxForSpace,
                                Container(
                                  height: 27,
                                  width: 27,
                                  color: Colors.blue,
                                ),
                                boxForSpace,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Tv Shows',style:kHomeTileText ),
                                Text('Movies',style:kHomeTileText),
                                Text('Category',style:kHomeTileText),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  : boxForSpace
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w440_and_h660_face/rg8N7x27Ef6PvlIiioLStf9ZaIO.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomButton(
                  size: 30,
                  icon: Icons.add,
                  text: 'My List', textSize: 17,
                ),
                PlayButton(),
                CustomButton(icon: Icons.info, text: 'Info',size: 30, textSize: 17,)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(kwhite)),
        onPressed: () {},
        icon: const Icon(Icons.play_arrow, size: 30, color: backGroundColor),
        label: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: backGroundColor),
          ),
        ));
  }
}

class NumberRow extends StatelessWidget {
  const NumberRow({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: MainTitle(title: title),
        ),
        boxForSpace,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
