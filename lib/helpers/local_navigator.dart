import 'package:ccis_dms/constants/controllers.dart';
import 'package:ccis_dms/routing/router.dart';
import 'package:ccis_dms/routing/routes.dart';
import 'package:flutter/cupertino.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: homePageRoute,
      onGenerateRoute: generateRoute,
    );
