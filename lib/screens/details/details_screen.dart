import 'package:flutter/material.dart';
import 'package:blossom_app/constant/constants.dart';
import 'package:blossom_app/screens/details/components/components.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}