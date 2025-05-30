import 'package:DropIT/features/auth/data/repository/customer_repo_Impl.dart';
import 'package:DropIT/features/auth/data/repository/driver_repo_impl.dart';
import 'package:DropIT/features/auth/domain/repository/customer_repository.dart';
import 'package:DropIT/features/auth/domain/repository/driver_repository.dart';
import 'package:DropIT/features/auth/domain/usecase/create_customer_acc.dart';
import 'package:DropIT/features/auth/domain/usecase/create_driver_acc.dart';
import 'package:DropIT/features/auth/domain/usecase/update_customer_acc.dart';
import 'package:DropIT/features/auth/domain/usecase/update_driver_acc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/auth/presentation/bloc/authentication_state.dart';
import 'package:DropIT/features/customer/domain/usecases/create_order_usecase.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_bloc.dart';
import 'package:DropIT/features/customer/presentation/bloc/customer_state.dart';
import 'package:DropIT/features/home/presentation/pages/home_page.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_bloc.dart';
import 'package:ayinza_auth/auth/data/datasources/auth_local_datasource.dart';
import 'package:ayinza_auth/auth/data/datasources/auth_remote_datasource.dart';
import 'package:ayinza_auth/auth/data/repositories/auth_repository_impl.dart';
import 'package:ayinza_auth/auth/domain/entities/auth_server_config.dart';
import 'package:ayinza_auth/auth/domain/repositories/auth_repository.dart';
import 'package:ayinza_auth/auth/presentation/bloc/auth_bloc.dart';
import 'package:ayinza_commons/utils/common_properties.dart';
import 'package:ayinza_commons/utils/properties_loader.dart';
import 'package:ayinza_form_components/tabs/tab_selector/bloc/tab_bloc.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:shared/utils/bloc_utility_helper.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  // Core dependencies
  serviceLocator.registerLazySingleton<Client>(() => Client());
  serviceLocator.registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage());

  serviceLocator.registerLazySingleton<PropertyLoader>(
      () => PropertyLoader('assets/configs/app_properties.properties'));

  serviceLocator.registerSingleton<CommonProperties>(
    CommonProperties(serviceLocator()),
  );

  // Config (needed by AuthRemoteDatasource)
  serviceLocator.registerLazySingleton<AuthServerConfig>(
    () => AuthServerConfig(
      properties: serviceLocator(),
      auth0LoginCallbackPage: const HomePage(),
      auth0LogoutCallbackPage: const HomePage(),
    ),
  );

  // Datasources (required by repository)
  serviceLocator.registerLazySingleton<AuthLocalDatasource>(
    () => AuthLocalDatasourceImpl(serviceLocator()),
  );

  serviceLocator.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(
      authProxy: const FlutterAppAuth(),
      authServerConfig: serviceLocator<AuthServerConfig>(),
    ),
  );

  // Repository (depends on datasources)
  serviceLocator.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(serviceLocator(), serviceLocator()),
  );
   serviceLocator.registerSingleton<CustomerAccountRepository>(
    CustomerRepositoryImpl(),
  );
 serviceLocator.registerSingleton<DriverRepository>(
    DriverAccountRepoImpl(),
  );
  //UseCases
   serviceLocator.registerSingleton<CreateCustomerAccountUsecase>(
    CreateCustomerAccountUsecase(),
  );
   serviceLocator.registerSingleton<CreateDriverAccountUsecase>(
    CreateDriverAccountUsecase());
     serviceLocator.registerSingleton<UpdateCustomerAccountUsecase>(
    UpdateCustomerAccountUsecase(),
  );
   serviceLocator.registerSingleton<UpdateDriverAccountUsecase>(
    UpdateDriverAccountUsecase(),
  );
  serviceLocator.registerSingleton<CreateOrderUsecase>(CreateOrderUsecase());
  
  // Blocs
  serviceLocator.registerLazySingleton<AnimationBloc>(() => AnimationBloc());

  serviceLocator.registerLazySingleton<AuthBloc>(
    () => AuthBloc(serviceLocator()),


  );
    serviceLocator.registerLazySingleton<CustomerBloc>(
    () => CustomerBloc(serviceLocator()),


  );
 
   serviceLocator
      .registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc(
            serviceLocator(), serviceLocator(),serviceLocator(),serviceLocator()
          ));
  
    serviceLocator.registerLazySingleton<TabBloc>(() => TabBloc());

  // Utility helpers
  serviceLocator.registerLazySingleton<BlocUtilityHelper<AuthBloc, AuthState>>(
    () => const BlocUtilityHelper<AuthBloc, AuthState>(),
    
  );
   serviceLocator.registerLazySingleton<
      BlocUtilityHelper<AuthenticationBloc, AuthenticationState>>(
    () => const BlocUtilityHelper<AuthenticationBloc, AuthenticationState>(),
  );
   serviceLocator.registerLazySingleton<
      BlocUtilityHelper<CustomerBloc, CustomerState>>(
    () => const BlocUtilityHelper<CustomerBloc, CustomerState>(),
  );
}
