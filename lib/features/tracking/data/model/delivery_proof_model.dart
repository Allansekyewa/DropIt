import 'package:DropIT/features/tracking/domain/entity/delivery_proof.dart';
import 'package:shared/entities/json_model.dart';

class DeliveryProofModel extends DeliveryProof implements JsonModel<DeliveryProofModel> {
  const DeliveryProofModel({
    
   required super.otp, required super.photoProofUrl, required super.recipientSignature});
  @override
  DeliveryProofModel fromEntity<DeliveryProofModel extends DeliveryProof>() {
    // TODO: implement fromEntity
   return this as DeliveryProofModel;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
  
}