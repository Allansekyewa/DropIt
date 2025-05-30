import 'package:DropIT/core/enums/tracking_status.dart';
import 'package:DropIT/features/tracking/domain/entity/lat_lang.dart';
import 'package:shared/entities/contract.dart';

abstract class TrackingHistory implements Contract<TrackingHistory>{
   final TrackingStatus status;
  final LatLng? location;  

  final String? notes;
  const TrackingHistory({
    required this.location,
    required this.notes,
    required this.status,
 
  });
        @override
  List<Object?> get props => [status,location,notes,];

  @override
  bool? get stringify => true;
}