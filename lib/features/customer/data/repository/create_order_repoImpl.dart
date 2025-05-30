import 'package:DropIT/features/customer/domain/entity/order_delivery.dart';
import 'package:DropIT/features/customer/domain/repository/create_order_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';

class CreateOrderRepoimpl extends CreateOrderRepo{
  @override
  Future<Either<Failure, OrderDelivery>> createOrder(OrderDelivery order) {
    // TODO: implement createOrder
    throw UnimplementedError();
  }
}