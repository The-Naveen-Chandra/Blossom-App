import 'package:blossom_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:blossom_app/screens/details/components/components.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 400,
          ),
          SizedBox(
            height: kDefaultPadding - 5,
          ),
          BuyAndDescriptionBtn(),
        ],
      ),
    );
  }
}
