import 'package:DropIT/features/customer/domain/entity/order_delivery.dart';
import 'package:dartz/dartz.dart';
import 'package:shared/entities/failure.dart';

abstract class  CreateOrderRepo {
    Future<Either<Failure, OrderDelivery>> createOrder(OrderDelivery order);
  
}