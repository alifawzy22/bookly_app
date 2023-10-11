import 'package:bookly_app/Features/home/data/models/book_model/book_model/item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final Item book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: CustomBookImage(
            imageUrl: book.volumeInfo!.imageLinks?.thumbnail! ??
                'https://e7.pngegg.com/pngimages/829/733/png-clipart-logo-brand-product-trademark-font-not-found-logo-brand.png',
          ),
        ),
        const SizedBox(height: 32),
        Text(
          book.volumeInfo!.title ?? 'No Title',
          style: Styles.textStyle30.copyWith(
            fontFamily: GoogleFonts.mondaTextTheme().labelLarge!.fontFamily,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo!.authors
                    ?.map((e) => e)
                    .toString()
                    .split(',')
                    .join('\n')
                    .replaceAll('(', '')
                    .replaceAll(')', '') ??
                'No Author',
            style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        const BookRating(
          count: 0,
          rate: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 24),
        BooksAction(
          book: book,
        ),
      ],
    );
  }
}
