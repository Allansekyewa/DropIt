import 'package:DropIT/features/auth/domain/entity/drivers.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class UpdateDriverAccountUsecase extends UseCase<void, UpdateDriverAccountParams> {
  @override
  Future<Either<Failure, void>> call(UpdateDriverAccountParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class UpdateDriverAccountParams {
  final DriverAccount driverAccount;
  UpdateDriverAccountParams(this.driverAccount);
}