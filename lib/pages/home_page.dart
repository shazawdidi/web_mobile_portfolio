import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/skill_desktop.dart';
import '../widgets/skill_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= sMinDesTopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              /// MAIN
              if (constraints.maxWidth >= sMinDesTopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                  onLogoTap: () {},
                ),
              if (constraints.maxWidth >= sMinDesTopWidth)
                MainDesktop()
              else
                MainMobile(),

              ///SKILLS
              Container(
                width: screenWidth,
                color: CustomColor.bgLight1,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "What I Can Do ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    //platform and skills
                    if (constraints.maxWidth >= sMinDesTopWidth)
                      const SkillDesktop()
                    else
                      const SkillMobile(),
                  ],
                ),
              ),

              ///PROJECTS
              Container(
                height: 400,
                width: double.maxFinite,
              ),

              ///CONTACT
              Container(
                height: 400,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              ///FOOTER
              Container(
                height: 400,
                width: double.maxFinite,
              ),
            ],
          ));
    });
  }
}
