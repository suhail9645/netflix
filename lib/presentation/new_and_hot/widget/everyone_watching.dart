import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/const_widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        boxForSpaceHeight,
        const Text(
          'Friends',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
       
        const Text(
          'Lorem ipsum dolor sit amet, voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in.',
          style: TextStyle(color: kgrey),
        ),
        boxForSpace50,
        const VideoWidget(),
        boxForSpaceHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButton(
              icon: Icons.share,
              text: 'Share',
              size: 25,
              textSize: 12,
            ),
            boxForSpace,
            CustomButton(
              icon: Icons.add,
              text: 'Add',
              size: 25,
              textSize: 12,
            ),
            boxForSpace,
            CustomButton(
              icon: Icons.play_arrow_outlined,
              text: 'Play',
              size: 25,
              textSize: 12,
            ),
            boxForSpace,
          ],
        )
      ],
    );
  }
}
