import 'package:DropIT/features/auth/domain/entity/customer.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class UpdateCustomerAccountUsecase extends UseCase<void,UpdateCustomerAccParams> {
  @override
  Future<Either<Failure, void>> call(UpdateCustomerAccParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class UpdateCustomerAccParams {
  final CustomerAccount customerAccount;
  UpdateCustomerAccParams(this.customerAccount);
}