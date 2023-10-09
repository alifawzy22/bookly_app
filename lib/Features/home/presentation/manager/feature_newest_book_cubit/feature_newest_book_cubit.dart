import 'package:bookly_app/Features/home/data/models/book_model/book_model/item.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_newest_book_state.dart';

class FeatureNewestBookCubit extends Cubit<FeatureNewestBookState> {
  FeatureNewestBookCubit(this.homeRepo) : super(FeatureNewestBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedNewestBooks() async {
    emit(FeatureNewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) => emit(
        FeatureNewestBookFailure(
          failure.errMessage,
        ),
      ),
      (books) => emit(
        FeatureNewestBookSuccess(books),
      ),
    );
  }
}
