import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomListBooksShimmerWidget extends StatelessWidget {
  const CustomListBooksShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
