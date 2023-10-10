import 'package:bookly_app/Features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_shimmer_books_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ListView.builder(
                  itemCount: state.books.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo!.imageLinks
                                ?.thumbnail! ??
                            'https://e7.pngegg.com/pngimages/829/733/png-clipart-logo-brand-product-trademark-font-not-found-logo-brand.png',
                      ),
                    );
                  }),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              child: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: CustomShimmerLoadingListBooks(
                  count: 5,
                ),
              ));
        }
      },
    );
  }
}
