
import 'package:DropIT/features/auth/presentation/bloc/authentication_bloc.dart';
import 'package:DropIT/features/home/presentation/pages/home_page.dart';
import 'package:DropIT/injection_container.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_bloc.dart';
import 'package:ayinza_auth/auth/presentation/bloc/auth_bloc.dart';
import 'package:ayinza_form_components/tabs/tab_selector/bloc/tab_bloc.dart';
import 'package:flutter/material.dart';
import 'package:DropIT/injection_container.dart' as dependencies;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();

  await dependencies.initializeDependencies();
  runApp(const DropIt());
}

class DropIt extends StatelessWidget {
  const DropIt({super.key});


  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider
    (
      providers: [
                 BlocProvider(create: (context) => serviceLocator<AnimationBloc>()),
                  BlocProvider(create: (context) => serviceLocator<AuthBloc>()),
                   BlocProvider(create: (context) => serviceLocator<AuthenticationBloc>()),
                    BlocProvider(create: (context) => serviceLocator<TabBloc>()),
      ],
      child: MaterialApp(
        
               debugShowCheckedModeBanner: false,
      
        theme: ThemeData(
         
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
