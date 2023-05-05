import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.icon, required this.text,
  });
 final IconData icon;
 final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(
          icon,
          color: kwhite,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
          ),
        )
      ],
    );
  }
}