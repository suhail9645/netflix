import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/widgets/custom_button.dart';
import '../../../core/colors/const_widget.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 380,
          child: Column(
            children: const [
              Text(
                'Feb',
                style: TextStyle(
                  fontSize: 16,
                  color: kgrey,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 380,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              boxForSpaceHeight,
              Row(
                children: [
                  Text(
                    'TallGirl 2',
                    style: GoogleFonts.kaushanScript(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  const CustomButton(
                    icon: Icons.alarm,
                    text: 'Remind Me',
                    size: 20,
                    textSize: 11,
                  ),
                  boxForSpace,
                  const CustomButton(
                    icon: Icons.info_outline_rounded,
                    text: 'Info',
                    size: 20,
                    textSize: 11,
                  ),
                  boxForSpace
                ],
              ),
              const Text('Coming on Friday'),
              boxForSpaceHeight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Lorem ipsum dolor sit amet, voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in.',
                style: TextStyle(color: kgrey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

