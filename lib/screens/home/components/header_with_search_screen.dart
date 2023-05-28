import 'package:blossom_app/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // this will cover 20 % of our total height
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi, Naveen",
                  style:
                      // Theme.of(context).textTheme.headlineMedium!.copyWith(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      GoogleFonts.poppins(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/images/logo.png",
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              height: 54,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffixIcon: SvgPicture.asset("assets/icons/search.svg",)
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/search.svg",
                      // ignore: deprecated_member_use
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
