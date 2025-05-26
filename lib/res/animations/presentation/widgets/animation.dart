import 'package:DropIT/res/animations/presentation/bloc/animation_bloc.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_event.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';



class SplashAnimationWidget extends StatelessWidget {
  final double width;
  final double height;

  const SplashAnimationWidget({
    super.key,
    this.width = 200,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AnimationBloc>().add(StartAnimation());
    });

    return BlocBuilder<AnimationBloc, AnimationState>(
      builder: (context, state) {
        if (state is AnimationPlaying) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                state.currentAnimationPath,
                key: ValueKey(state.currentAnimationPath), 
                width: width,
                height: height,
                repeat: true,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 8),
            
            ],
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
