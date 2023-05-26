import 'package:blossom_app/constant/constants.dart';
import 'package:flutter/material.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            title: "Samantha",
            country: "Russia",
            price: 400,
            imageSrc: "assets/images/image_1.png",
            onPressed: () {},
          ),
          RecommendedPlantCard(
            title: "Angelic",
            country: "Russia",
            price: 700,
            imageSrc: "assets/images/image_2.png",
            onPressed: () {},
          ),
          RecommendedPlantCard(
            title: "Lycian",
            country: "Russia",
            price: 200,
            imageSrc: "assets/images/image_3.png",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    super.key,
    required this.title,
    required this.imageSrc,
    required this.country,
    required this.price,
    this.onPressed,
  });

  final String title, imageSrc, country;
  final int price;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      // it will cover 40% of our total width
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(
            imageSrc,
          ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: country,
                          style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.8),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
