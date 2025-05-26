import 'package:DropIT/features/auth/domain/entity/drivers.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';

abstract class DriverRepository {
     Future<Either<Failure, void>> createDriverAccount(DriverAccount account);
   Future<Either<Failure, void>> updateDriverAccount(DriverAccount account);
}