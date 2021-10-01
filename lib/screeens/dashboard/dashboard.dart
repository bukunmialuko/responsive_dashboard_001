import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_001/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.white,
                      height: 500,
                    )),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                        color: secondaryColor, borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Text(
                          "Storage Details",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                        Chart()
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
