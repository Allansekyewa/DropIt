import 'package:shared/entities/contract.dart';

abstract class LatLng implements Contract<LatLng> {
  final double latitude;
  final double longitude;
  final double? accuracy;
    LatLng({
    required this.accuracy,
    required this.latitude,
    required this.longitude
   });
      @override
  List<Object?> get props => [
        accuracy,
        latitude,
        longitude
     
      ];
  @override
  bool? get stringify => true;

}