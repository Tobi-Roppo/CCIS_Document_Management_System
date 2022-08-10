import 'package:ccis_dms/pages/category/category.dart';
import 'package:ccis_dms/pages/coupon/coupons.dart';
import 'package:ccis_dms/pages/home/home_screen.dart';
import 'package:ccis_dms/pages/offer/offer.dart';

import 'package:ccis_dms/pages/order/order.dart';
import 'package:ccis_dms/pages/products/products.dart';
import 'package:ccis_dms/pages/sales/sales.dart';
import 'package:ccis_dms/pages/user/user.dart';
import 'package:ccis_dms/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePageRoute:
      return _getPageRoute(HomePage());
    case usersPageRoute:
      return _getPageRoute(const UsersPage());
    case productsPageRoute:
      return _getPageRoute(ProductsPage());
    case couponPageRoute:
      return _getPageRoute(const CouponPage());
    case categoryPageRoute:
      return _getPageRoute(const CategoryPage());
    case order:
      return _getPageRoute(const OrderPage());
    case salesPageReport:
      return _getPageRoute(const SalesPage());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
