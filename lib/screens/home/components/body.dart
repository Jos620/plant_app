import 'package:flutter/material.dart';

import 'recommends_plants.dart';
import 'title_with_more_btn.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          const RecommendsPlants(),
        ],
      ),
    );
  }
}
