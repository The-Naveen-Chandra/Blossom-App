import 'package:flutter/material.dart';
import 'package:blossom_app/screens/home/components/components.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TextWithMoreBtn(title: "Recommended", onPressed: () {}),
          const RecommendedPlants(),
          TextWithMoreBtn(title: "Featured Plants", onPressed: () {}),
          const FeaturedPlants(),
        ],
      ),
    );
  }
}
