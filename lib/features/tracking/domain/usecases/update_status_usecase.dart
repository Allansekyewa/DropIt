import 'package:DropIT/core/enums/tracking_status.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class UpdateStatusUsecase extends UseCase<void,UpdateStatusParams>{
  @override
  Future<Either<Failure, void>> call(UpdateStatusParams  params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class UpdateStatusParams{
  final String? trackingId;
  final TrackingStatus? trackingStatus;
  const UpdateStatusParams({required this.trackingId,required this.trackingStatus});
}