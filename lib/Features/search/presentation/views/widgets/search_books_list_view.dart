import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchBooksListView extends StatelessWidget {
  const SearchBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: BooksListViewItem(),
          );
        });
  }
}
