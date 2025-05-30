import 'package:DropIT/features/tracking/domain/entity/lat_lang.dart';
import 'package:shared/entities/json_model.dart';

class LatLngModel extends LatLng implements JsonModel<LatLngModel>{
   LatLngModel({
    
   required super.accuracy, required super.latitude, required super.longitude});
  @override
  LatLngModel fromEntity<LatLngModel extends LatLng>() {
    // TODO: implement fromEntity
    return this as LatLngModel;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}