import 'package:bookly_app/Features/home/presentation/manager/feature_list_book_cubit/feature_list_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/widgets/custom_circular_progress_indicator.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureListBookCubit, FeatureListBookState>(
      builder: (context, state) {
        if (state is FeatureListBookLoading) {
          return const Center(child: CustomCircularProgressIndicator());
        } else if (state is FeatureListBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CustomBookImage(),
                  );
                }),
          );
        }
      },
    );
  }
}
