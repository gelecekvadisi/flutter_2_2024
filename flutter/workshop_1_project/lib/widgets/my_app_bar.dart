import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workshop_1_project/constants.dart';
import 'package:workshop_1_project/page/screen_util_demo_page.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    Color? backgroundColor,
    Color iconColor = Constants.iconColor,
    required BuildContext context,
  }) : super(
          backgroundColor: backgroundColor,
          leading: IconButton(
            onPressed: () {
              debugPrint("Önceki sayfaya dön!");
            },
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("Ürün arama!");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenUtilDemoPage(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              ),
            ),
            IconButton(
              onPressed: () {
                debugPrint("Sepete git!");
              },
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              ),
            ),
          ],
        );
}
