import 'package:DropIT/vo/area.dart';
import 'package:DropIT/vo/date.dart';
import 'package:DropIT/vo/flat_no.dart';
import 'package:DropIT/vo/phoneNumber.dart';
import 'package:DropIT/vo/pinCode.dart';
import 'package:DropIT/vo/quantity.dart';
import 'package:DropIT/vo/time.dart';
import 'package:DropIT/vo/userName.dart';
import 'package:DropIT/vo/weight.dart';
import 'package:flutter/foundation.dart';
import 'package:shared/entities/contract.dart';

abstract class OrderDelivery implements Contract<OrderDelivery> {
    final Area? area;
    final UserName?userName;
    final PhoneNumber? phoneNumber;
    final PinCode? pinCode;
    final Time?time;
    final Date? date;
    final Weight? weight;
    final Quantity?quantity;
    final Category?category;
    final FlatNumber?flatNumber;
    const OrderDelivery({required this.area,required this.category,required this.date,required this.flatNumber,required this.phoneNumber,required this.pinCode,required this.quantity,required this.time,required this.userName,required this.weight});
     @override
  List<Object?> get props => [area,phoneNumber,pinCode,userName,category,quantity,weight,date,time,weight];

  @override
  bool? get stringify => true;
}


