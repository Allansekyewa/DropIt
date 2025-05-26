import 'package:DropIT/features/auth/domain/entity/drivers.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class CreateDriverAccountUsecase extends UseCase<void,DriverAccountParams> {
  @override
  Future<Either<Failure, void>> call(DriverAccountParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class DriverAccountParams {
  final DriverAccount driverAccount;
  DriverAccountParams(this.driverAccount);
}