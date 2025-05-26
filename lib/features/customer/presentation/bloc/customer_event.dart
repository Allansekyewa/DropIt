import 'package:DropIT/features/customer/presentation/bloc/customer_state.dart';
import 'package:DropIT/vo/area.dart';
import 'package:DropIT/vo/date.dart';
import 'package:DropIT/vo/firstName.dart';
import 'package:DropIT/vo/flat_no.dart';
import 'package:DropIT/vo/phoneNumber.dart';
import 'package:DropIT/vo/pinCode.dart';
import 'package:DropIT/vo/time.dart';
import 'package:ayinza_commons/bloc/page_event.dart';

class CustomerEvent  extends PageEvent{}
sealed class CustomerFieldChangedEvent extends CustomerEvent
    with FieldChangedEvent<CustomerState> {
  @override
  final String fieldKey;
  @override
  final dynamic fieldValue;
  CustomerFieldChangedEvent(
      {required this.fieldKey, required this.fieldValue});
}
class SendersNameChangedEvent extends CustomerFieldChangedEvent {
  final String sendersName;
  SendersNameChangedEvent({required this.sendersName, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: sendersName);

  @override
 CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(firstName: FirstName(sendersName));
  }
}
class RecieversNameChangedEvent extends CustomerFieldChangedEvent {
  final String name;
 RecieversNameChangedEvent({required this.name, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: name);

  @override
 CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(firstName: FirstName(name));
  }
}
class SenderNumberChangedevent extends CustomerFieldChangedEvent {
  final String senderPhoneNumber;
  SenderNumberChangedevent(
      {required this.senderPhoneNumber, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: senderPhoneNumber);

  @override
  CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(phoneNumber: PhoneNumber(senderPhoneNumber));
  }
}
class RecieversNumberChangedevent extends CustomerFieldChangedEvent {
  final String recPhoneNumber;
  RecieversNumberChangedevent(
      {required this. recPhoneNumber, required String componentKey})
      : super(fieldKey: componentKey, fieldValue:  recPhoneNumber);

  @override
  CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(phoneNumber:PhoneNumber( recPhoneNumber));
  }
}
class SenderAreaChangedevent extends CustomerFieldChangedEvent {
  final String senderArea;
  SenderAreaChangedevent(
      {required this.senderArea, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: senderArea);

  @override
  CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(areaName: Area(senderArea));
  }
}
class SenderDoorOrFlatNoChangedevent extends CustomerFieldChangedEvent {
  final String senderFlatNo;
 SenderDoorOrFlatNoChangedevent(
      {required this.senderFlatNo, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: senderFlatNo);

  @override
CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(flatNumber: FlatNumber(senderFlatNo));
  }
}
class RecieverDoorOrFlatNoChangedevent extends CustomerFieldChangedEvent {
  final String flatNo;
 RecieverDoorOrFlatNoChangedevent(
      {required this.flatNo, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: flatNo);

  @override
CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(flatNumber: FlatNumber(flatNo));
  }
}

class SenderPinCodeChangedevent extends CustomerFieldChangedEvent {
  final String senderPin;
  SenderPinCodeChangedevent(
      {required this.senderPin, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: senderPin);

  @override
 CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(pinCode: PinCode(senderPin));
  }
}

class RecieverPinCodeChangedevent extends CustomerFieldChangedEvent {
  final String pinCode;
 RecieverPinCodeChangedevent(
      {required this.pinCode, required String componentKey})
      : super(fieldKey: componentKey, fieldValue:pinCode);

  @override
 CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(pinCode: PinCode(pinCode));
  }
}

class DateChangedevent extends CustomerFieldChangedEvent {
  final String date;
  DateChangedevent(
      {required this.date, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: date);

  @override
  CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(date: Date(date));
  }
}
class TimeChangedevent extends CustomerFieldChangedEvent {
  final String time;
 TimeChangedevent(
      {required this.time, required String componentKey})
      : super(fieldKey: componentKey, fieldValue: time);

  @override
 CustomerState updateState(CustomerState currentState) {
    return currentState.copyWith(time:Time(time));
  }
}
