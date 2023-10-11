part of 'feature_newest_book_cubit.dart';

sealed class FeatureNewestBookState extends Equatable {
  const FeatureNewestBookState();

  @override
  List<Object> get props => [];
}

final class FeatureNewestBookInitial extends FeatureNewestBookState {}

final class FeatureNewestBookLoading extends FeatureNewestBookState {}

final class FeatureNewestBookFailure extends FeatureNewestBookState {
  final String errMessage;

  const FeatureNewestBookFailure(this.errMessage);
}

final class FeatureNewestBookSuccess extends FeatureNewestBookState {
  final List<Item> books;

  const FeatureNewestBookSuccess(this.books);
}
