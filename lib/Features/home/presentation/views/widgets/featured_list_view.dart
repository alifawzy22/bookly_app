import 'package:bookly_app/Features/home/presentation/manager/feature_list_book_cubit/feature_list_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_shimmer_books_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureListBookCubit, FeatureListBookState>(
      builder: (context, state) {
        if (state is FeatureListBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is FeatureListBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo!.imageLinks ==
                                null
                            ? 'https://e7.pngegg.com/pngimages/829/733/png-clipart-logo-brand-product-trademark-font-not-found-logo-brand.png'
                            : state.books[index].volumeInfo!.imageLinks!
                                .thumbnail!,
                      ),
                    ),
                  );
                }),
          );
        } else {
          return const CustomShimmerLoadingListBooks(
            count: 3,
          );
          //const Center(child: CustomCircularProgressIndicator());
        }
      },
    );
  }
}
