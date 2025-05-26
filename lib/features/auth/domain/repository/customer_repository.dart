import 'package:DropIT/features/auth/domain/entity/customer.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';

abstract class CustomerAccountRepository{
     Future<Either<Failure, void>> createCustomerAccount(CustomerAccount account);
   Future<Either<Failure, void>> updateCustomerAccount(CustomerAccount account);
}