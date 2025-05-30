import 'package:shared/entities/contract.dart';

abstract class DeliveryProof implements Contract<DeliveryProof> {
   final String? recipientSignature;
  final String? otp;             
  final String? photoProofUrl;
  const DeliveryProof({
    required this.otp,
    required this.photoProofUrl,
    required this.recipientSignature
  });
        @override
  List<Object?> get props => [
       otp,
       photoProofUrl,
       recipientSignature
     
      ];
  @override
  bool? get stringify => true;
}