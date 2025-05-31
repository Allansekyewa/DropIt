import 'package:DropIT/core/enums/tracking_status.dart';
import 'package:DropIT/features/tracking/domain/entity/delivery_proof.dart';
import 'package:DropIT/features/tracking/domain/entity/tracking_entity.dart';

abstract class TrackingRepo {
  Stream<TrackingEntity> trackPackage(String trackingId);
  Future<TrackingEntity> getCurrentStatus(String trackingId);
  Future<void> updateStatus({
    required String trackingId,
    required TrackingStatus status,
    String? notes,
  });
   Future<void> addDeliveryProof({
    required String trackingId,
    required DeliveryProof proof,
  });
  
}

