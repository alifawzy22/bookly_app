part of 'feature_list_book_cubit.dart';

sealed class FeatureListBookState extends Equatable {
  const FeatureListBookState();

  @override
  List<Object> get props => [];
}

final class FeatureListBookInitial extends FeatureListBookState {}

final class FeatureListBookLoading extends FeatureListBookState {}

final class FeatureListBookFailure extends FeatureListBookState {
  final String errMessage;

  const FeatureListBookFailure(this.errMessage);
}

final class FeatureListBookSuccess extends FeatureListBookState {
  final List<Item> books;

  const FeatureListBookSuccess(this.books);
}
