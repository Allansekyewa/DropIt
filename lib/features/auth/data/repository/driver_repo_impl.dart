import 'package:DropIT/features/auth/domain/entity/drivers.dart';
import 'package:DropIT/features/auth/domain/repository/driver_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';

class DriverAccountRepoImpl extends DriverRepository{
  @override
  Future<Either<Failure, void>> createDriverAccount(DriverAccount account) {
    // TODO: implement createDriverAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateDriverAccount(DriverAccount account) {
    // TODO: implement updateDriverAccount
    throw UnimplementedError();
  }
}