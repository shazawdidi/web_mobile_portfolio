import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';
import 'logo_widget.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: sHeaderDecoration,
      child: Row(
        children: [
          LogoWidget(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary),
                ))
        ],
      ),
    );
  }
}
