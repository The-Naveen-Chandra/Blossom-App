import 'package:blossom_app/constant/constants.dart';
import 'package:flutter/material.dart';

class BuyAndDescriptionBtn extends StatelessWidget {
  const BuyAndDescriptionBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 70,
          // child: FloatingActionButton.small(
          //   onPressed: () {},
          //   child: const Text(
          //     "Buy Now",
          //   ),
          // ),
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll<Color>(
                kPrimaryColor,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            child: Text(
              "Buy Now",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
