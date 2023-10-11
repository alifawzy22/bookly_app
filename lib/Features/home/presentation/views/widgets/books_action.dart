import 'package:bookly_app/Features/home/data/models/book_model/book_model/item.dart';
import 'package:bookly_app/core/functions/custom_url_launcher.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  final Item book;
  const BooksAction({
    super.key,
    required this.book,
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
                text: 'Free',
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
                onPressed: () async {
                  await customUrlLauncher(
                      context: context,
                      url: book.volumeInfo!.previewLink ?? '');
                },
                textVerticalPadding: 8,
                backgroundColor: Colors.orange,
                text: getText(book.volumeInfo!.previewLink),
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

  String getText(String? previewLink) {
    if (previewLink == null) {
      return 'Not Available';
    }
    return 'Preview';
  }
}
