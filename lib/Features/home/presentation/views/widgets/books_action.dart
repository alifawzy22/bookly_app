import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 1.2,
              child: CustomButton(
                textVerticalPadding: 8,
                backgroundColor: Colors.white,
                text: '19.99 \$',
                textStyle: Styles.textStyle20.copyWith(
                  color: Colors.black,
                ),
                topLeftRadius: 8,
                bottomLeftRadius: 8,
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 1.2,
              child: CustomButton(
                textVerticalPadding: 8,
                backgroundColor: Colors.orange,
                text: 'Free Preview',
                textStyle: Styles.textStyle16.copyWith(
                  color: Colors.white,
                ),
                topRightRadius: 8,
                bottomRightRadius: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
