import 'package:DropIT/features/auth/domain/entity/customer.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class CreateCustomerAccountUsecase extends UseCase<void ,CustomerAccountParams> {
  @override
  Future<Either<Failure, void>> call(CustomerAccountParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class CustomerAccountParams{
  final CustomerAccount customerAccount;
  const CustomerAccountParams(this.customerAccount);
}