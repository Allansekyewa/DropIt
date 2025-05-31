import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class GetCurrentStatusUsecase extends UseCase<void ,GetCurrentStatusParams>{
  @override
  Future<Either<Failure, void>> call(GetCurrentStatusParams     params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class GetCurrentStatusParams{
  final String?tackingId;
  const GetCurrentStatusParams({required this.tackingId});
}