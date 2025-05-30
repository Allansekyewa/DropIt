import 'package:DropIT/features/customer/domain/entity/order_delivery.dart';
import 'package:shared/entities/json_model.dart';
import 'package:shared/models/meta_data_model.dart';


class OrderDeliveryModel extends OrderDelivery implements JsonModel<OrderDeliveryModel>{
  final MetaDataModel metadata;
   OrderDeliveryModel({
     MetaDataModel ?metaData,
     required super.area, required super.category, required super.date, required super.flatNumber, required super.phoneNumber, required super.pinCode, required super.quantity, required super.time, required super.userName, required super.weight}):metadata=metaData??MetaDataModel();
  @override
  OrderDeliveryModel fromEntity<OrderDeliveryModel extends OrderDelivery>() {
    // TODO: implement fromEntity
    return this as  OrderDeliveryModel;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
  
}