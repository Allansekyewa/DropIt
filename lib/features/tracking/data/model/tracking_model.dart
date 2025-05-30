import 'package:DropIT/features/tracking/domain/entity/tracking_entity.dart';
import 'package:shared/entities/json_model.dart';
import 'package:shared/models/meta_data_model.dart';

class TrackingModel extends TrackingEntity implements JsonModel<TrackingModel>{
  final MetaDataModel  metadata;
   TrackingModel({
    MetaDataModel? metaData, required super.status, required super.trackinNumber, required super.currentLocation, required super.driver, required super.eta, required super.history, required super.proof,
    
  }):metadata = metaData ?? MetaDataModel();

  @override
  T fromEntity<T extends TrackingEntity>() {
    // TODO: implement fromEntity
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
  
}