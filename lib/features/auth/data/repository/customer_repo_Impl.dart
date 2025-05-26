import 'package:DropIT/features/auth/domain/entity/customer.dart';
import 'package:DropIT/features/auth/domain/repository/customer_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';

class CustomerRepositoryImpl  extends CustomerAccountRepository{
  @override
  Future<Either<Failure, void>> createCustomerAccount(CustomerAccount account) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateCustomerAccount(CustomerAccount account) {
    // TODO: implement updateAccount
    throw UnimplementedError();
  }
}