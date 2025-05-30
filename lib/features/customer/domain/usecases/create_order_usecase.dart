import 'package:DropIT/features/customer/domain/entity/order_delivery.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';
import 'package:shared/usecase.dart';

class CreateOrderUsecase extends UseCase<void,CreateOrderParams>{
  @override
  Future<Either<Failure, void>> call(CreateOrderParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
class CreateOrderParams{
  final OrderDelivery orderDelivery;
  const CreateOrderParams(this.orderDelivery);
}