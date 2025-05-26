import 'package:DropIT/features/auth/domain/entity/customer.dart';
import 'package:shared/entities/json_model.dart';
import 'package:shared/models/meta_data_model.dart';

class CustomerModel extends CustomerAccount
    implements JsonModel<CustomerModel> {
        final MetaDataModel metadata;
  CustomerModel(
      {
            MetaDataModel? metaData,
        required super.email,
      required super.firstName,
      required super.lastName,
      required super.phoneNumber}): metadata = metaData ?? MetaDataModel();

  @override
  CustomerModel fromEntity<CustomerModel extends CustomerAccount>() {
   return this as CustomerModel;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
