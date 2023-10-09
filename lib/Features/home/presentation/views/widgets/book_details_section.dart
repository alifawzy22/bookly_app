import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomBookImage(
            imageUrl: '',
          ),
        ),
        const SizedBox(height: 32),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontFamily: GoogleFonts.mondaTextTheme().labelLarge!.fontFamily,
          ),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle16.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 8),
        const BookRating(
          count: 0,
          rate: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 24),
        const BooksAction(),
      ],
    );
  }
}
