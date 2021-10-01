import 'package:flutter/material.dart';
import 'package:responsive_dashboard_001/models/MyFiles.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5, vertical: defaultPadding)),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            )
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiels.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: defaultPadding, childAspectRatio: 1.4),
          itemBuilder: (context, index) => FileInfoCard(
            info: demoMyFiels[index],
          ),
        )
      ],
    );
  }
}
