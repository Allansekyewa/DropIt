import 'package:DropIT/features/tracking/domain/entity/delivery_proof.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class AddDeliveryProofUsecase extends UseCase<void,AddDeliveryProofParams> {
  @override
  Future<Either<Failure, void>> call(AddDeliveryProofParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class AddDeliveryProofParams {
  final String? trckingId;
  final DeliveryProof? deliveryProof;
  const AddDeliveryProofParams({required this.deliveryProof,required this.trckingId});
}