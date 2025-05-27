import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_bloc.dart';
import 'package:DropIT/injection_container.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_bloc.dart';

AnimationBloc animationBloc = serviceLocator<AnimationBloc>();
AuthenticationBloc authenticationBloc = serviceLocator<AuthenticationBloc>();
CustomerBloc customerBloc = serviceLocator<CustomerBloc>();