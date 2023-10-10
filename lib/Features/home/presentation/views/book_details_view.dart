import 'package:bookly_app/Features/home/data/models/book_model/book_model/item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final Item book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(book: book),
    );
  }
}
