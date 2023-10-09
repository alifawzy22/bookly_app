import 'package:bookly_app/Features/home/data/models/book_model/book_model/item.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'feature_list_book_state.dart';

class FeatureListBookCubit extends Cubit<FeatureListBookState> {
  FeatureListBookCubit(this.homeRepo) : super(FeatureListBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureListBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      return emit(FeatureListBookFailure(failure.errMessage));
    }, (books) {
      return emit(FeatureListBookSuccess(books));
    });
  }
}
