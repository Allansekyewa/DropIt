import 'package:DropIT/features/auth/domain/entity/drivers.dart';
import 'package:shared/entities/json_model.dart';
import 'package:shared/models/meta_data_model.dart';

class DriverModel extends DriverAccount
    implements JsonModel<DriverModel> {
        final MetaDataModel metadata;
  DriverModel(
      {
            MetaDataModel? metaData,
        required super.email,
      required super.firstName,
      required super.lastName,
      required super.phoneNumber, required super.license, required super.numberplate}): metadata = metaData ?? MetaDataModel();

  @override
 DriverModel fromEntity<DriverModel extends DriverAccount>() {
   return this as DriverModel;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
