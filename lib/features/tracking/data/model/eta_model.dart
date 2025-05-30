import 'package:DropIT/features/tracking/domain/entity/eta.dart';
import 'package:shared/entities/json_model.dart';
import 'package:shared/models/meta_data_model.dart';

class EtaModel extends Eta implements JsonModel<EtaModel> {
  final MetaDataModel metadata;

  EtaModel({
    MetaDataModel? metaData,
    required super.delayReason,
    required super.estimatedArrival,
    required super.remainingDistanceMeters,
  }) : metadata = metaData ?? MetaDataModel();

  @override
  EtaModel fromEntity<EtaModel extends Eta>() {
    return this as EtaModel;
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
