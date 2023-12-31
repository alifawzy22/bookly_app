import 'package:bookly_app/Features/home/data/models/book_model/book_model/item.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchNewestBooks();
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Item>>> fetchSimilarBooks(
      {required String category});
}
