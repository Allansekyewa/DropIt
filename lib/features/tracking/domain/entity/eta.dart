import 'package:shared/entities/contract.dart';

abstract class Eta implements Contract<Eta> {
  final DateTime estimatedArrival;
  final int remainingDistanceMeters; 
  final String? delayReason;
  const Eta(
      {required this.delayReason,
      required this.estimatedArrival,
      required this.remainingDistanceMeters});
        @override
  List<Object?> get props => [estimatedArrival, remainingDistanceMeters, delayReason];

  @override
  bool? get stringify => true;
}
