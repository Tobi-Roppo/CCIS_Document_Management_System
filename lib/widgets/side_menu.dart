import 'package:ccis_dms/constants/controllers.dart';
import 'package:ccis_dms/constants/style.dart';
import 'package:ccis_dms/helpers/responsiveness.dart';
import 'package:ccis_dms/routing/routes.dart';
import 'package:ccis_dms/widgets/custom_text.dart';
import 'package:ccis_dms/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: "Document Management System",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          // Divider(
          //   color: lightGrey.withOpacity(.1),
          // ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (item) => SideMenuItem(
                      itemName: item,
                      onTap: () {
                        if (item == homePageRoute) {
                          // Get.offAllNamed(authenticationPageRoute);
                          // menuController
                          //     .changeActiveItemTo(overviewPageDisplayName);
                        }
                        if (!menuController.isActive(item)) {
                          menuController.changeActiveItemTo(item);

                          // if (ResponsiveWidget.isLargeScreen(context)) {
                          //   Get.back();
                          //   navigationController.navigateTo(item);
                          // }
                          Get.back();
                          navigationController.navigateTo(item);
                        }
                      }),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
