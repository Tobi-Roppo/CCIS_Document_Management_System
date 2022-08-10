import 'package:ccis_dms/widgets/custom_text.dart';

import 'package:flutter/widgets.dart';

class AuthenicationPage extends StatelessWidget {
  const AuthenicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        text: 'Log out',
      ),
    );
  }
}
