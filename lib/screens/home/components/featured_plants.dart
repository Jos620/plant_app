import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(
          right: kDefaultPadding,
        ),
        child: Row(
          children: [
            FeaturePlantCard(image: 'assets/images/bottom_img_1.png', press: () {}),
            FeaturePlantCard(image: 'assets/images/bottom_img_2.png', press: () {}),
          ],
        ),
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          bottom: kDefaultPadding / 2,
          top: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
