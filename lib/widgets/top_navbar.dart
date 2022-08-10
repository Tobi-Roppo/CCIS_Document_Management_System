import 'package:ccis_dms/constants/style.dart';
import 'package:ccis_dms/helpers/responsiveness.dart';
import 'package:ccis_dms/widgets/custom_text.dart';
import 'package:ccis_dms/widgets/search_field.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
            child: CustomText(
              text: 'Document Management System',
              color: dark,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: SearchField(
              onSearch: searchTask,
              hintText: "Search Task .. ",
            ),
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(
            text: 'Profile',
            color: lightGrey,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          )
        ],
      ),
      iconTheme: const IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );

searchTask(String value) {}
