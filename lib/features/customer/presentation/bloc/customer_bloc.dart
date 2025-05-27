import 'package:DropIT/features/customer/presentation/bloc/customer_event.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_state.dart';
import 'package:ayinza_commons/bloc/page_bloc.dart';

class CustomerBloc extends PageBloc<CustomerEvent,CustomerState>{
  CustomerBloc():super(const CustomerInitial());
}