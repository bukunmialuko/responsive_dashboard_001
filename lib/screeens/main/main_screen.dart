import 'package:flutter/material.dart';
import 'package:responsive_dashboard_001/screeens/dashboard/dashboard.dart';
import 'package:responsive_dashboard_001/screeens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Expanded(child: SideMenu()), Expanded(flex: 5, child: DashboardScreen())],
        ),
      ),
    );
  }
}
