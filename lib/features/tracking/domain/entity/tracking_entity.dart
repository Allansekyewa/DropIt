import 'package:DropIT/core/enums/tracking_status.dart';
import 'package:DropIT/features/auth/domain/entity/drivers.dart';
import 'package:DropIT/features/tracking/domain/entity/delivery_proof.dart';
import 'package:DropIT/features/tracking/domain/entity/eta.dart';
import 'package:DropIT/features/tracking/domain/entity/lat_lang.dart';
import 'package:DropIT/features/tracking/domain/entity/tracking_history.dart';
import 'package:shared/entities/contract.dart';

abstract class TrackingEntity implements Contract<TrackingEntity>{
    final TrackingStatus status;
  final int? trackinNumber;
  final LatLng currentLocation;
  final DriverAccount? driver;
  final Eta? eta;
  final DeliveryProof? proof;
  final List<TrackingHistory> history;
  const TrackingEntity({
    required this.status,
    required this.trackinNumber,
    required this.currentLocation,
    required this.driver,
    required this.eta,
    required this.history,
    required this.proof
  });
          @override
  List<Object?> get props => [
      status,
      currentLocation,
      driver,
      eta,
      proof,
      trackinNumber,
      history
     
      ];
  @override
  bool? get stringify => true;
}