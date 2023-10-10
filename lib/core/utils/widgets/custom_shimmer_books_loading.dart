import 'package:bookly_app/core/utils/widgets/custom_shimmer_widget.dart';
import 'package:flutter/material.dart';

class CustomShimmerLoadingListBooks extends StatelessWidget {
  const CustomShimmerLoadingListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const CustomListBooksShimmerWidget();
          },
        ),
      ),
    );
  }
}
