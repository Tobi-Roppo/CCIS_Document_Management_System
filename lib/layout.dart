import 'package:ccis_dms/helpers/responsiveness.dart';
import 'package:ccis_dms/widgets/large_screen.dart';
import 'package:ccis_dms/widgets/side_menu.dart';
import 'package:ccis_dms/widgets/small_screen.dart';
import 'package:ccis_dms/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largerScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
