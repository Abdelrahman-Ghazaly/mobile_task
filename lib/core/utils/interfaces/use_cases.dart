import 'package:fpdart/fpdart.dart';

import '../errors/failure.dart';

abstract class AsyncUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class SyncUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
