import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '(245)',
          style: Styles.textStyle14.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
