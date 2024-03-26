import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "SH",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: CustomColor.greenLight),
      ),
    );
  }
}
