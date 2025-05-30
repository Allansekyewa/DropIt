import 'package:DropIT/features/tracking/domain/entity/tracking_history.dart';
import 'package:shared/entities/json_model.dart';

class TrackingHistoryModel extends TrackingHistory implements JsonModel<TrackingHistoryModel>{
  const TrackingHistoryModel({ required super.location, required super.notes, required super.status});
  @override
  TrackingHistoryModel fromEntity<TrackingHistoryModel extends TrackingHistory>() {
    // TODO: implement fromEntity
  return this as TrackingHistoryModel;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

}