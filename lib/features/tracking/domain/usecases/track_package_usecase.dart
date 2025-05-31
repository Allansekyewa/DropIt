import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class TrackPackageUsecase extends UseCase<void, TrackPackageParams>{
  @override
  Future<Either<Failure, void>> call(TrackPackageParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}
class TrackPackageParams{
  final String? trackingId;
  const TrackPackageParams({required this.trackingId});
}