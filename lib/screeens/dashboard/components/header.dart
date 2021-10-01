import 'package:flutter/material.dart';
import 'package:responsive_dashboard_001/screeens/dashboard/components/profile_card.dart';
import 'package:responsive_dashboard_001/screeens/dashboard/components/search_field.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
