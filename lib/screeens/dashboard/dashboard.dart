import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_001/constants.dart';

import 'components/profile_card.dart';
import 'components/search_field.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(
                  child: SearchField(),
                ),
                ProfileCard()
              ],
            )
          ],
        ),
      ),
    );
  }
}
