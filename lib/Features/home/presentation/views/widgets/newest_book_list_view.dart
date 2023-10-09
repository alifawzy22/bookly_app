import 'package:bookly_app/Features/home/presentation/manager/feature_newest_book_cubit/feature_newest_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/newest_book_list_view_item.dart';
import 'package:bookly_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBookListView extends StatelessWidget {
  const NewestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureNewestBookCubit, FeatureNewestBookState>(
      builder: (context, state) {
        if (state is FeatureNewestBookSuccess) {
          return SliverList.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 30, right: 30),
                  child: BooksListViewItem(
                    book: state.books[index],
                  ),
                );
              });
        } else if (state is FeatureNewestBookFailure) {
          return SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                  child: CustomErrorWidget(errMessage: state.errMessage)));
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}