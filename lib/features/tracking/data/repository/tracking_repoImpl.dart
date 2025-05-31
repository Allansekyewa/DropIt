import 'package:DropIT/core/enums/tracking_status.dart';
import 'package:DropIT/features/tracking/domain/entity/delivery_proof.dart';
import 'package:DropIT/features/tracking/domain/entity/tracking_entity.dart';
import 'package:DropIT/features/tracking/domain/repositories/tracking_repo.dart';

class TrackingRepoimpl implements TrackingRepo{
  @override
  Future<void> addDeliveryProof({required String trackingId, required DeliveryProof proof}) {
    // TODO: implement addDeliveryProof
    throw UnimplementedError();
  }

  @override
  Future<TrackingEntity> getCurrentStatus(String trackingId) {
    // TODO: implement getCurrentStatus
    throw UnimplementedError();
  }

  @override
  Stream<TrackingEntity> trackPackage(String trackingId) {
    // TODO: implement trackPackage
    throw UnimplementedError();
  }

  @override
  Future<void> updateStatus({required String trackingId, required TrackingStatus status, String? notes}) {
    // TODO: implement updateStatus
    throw UnimplementedError();
  }
}