import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 8),
                child: CustomBookImage(),
              );
            }),
      ),
    );
  }
}
