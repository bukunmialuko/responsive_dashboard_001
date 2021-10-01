import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10))),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.all(Radius.circular(10))),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
        ),
      ),
    );
  }
}
