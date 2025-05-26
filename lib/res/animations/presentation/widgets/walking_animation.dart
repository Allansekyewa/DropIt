import 'package:DropIT/core/constants/global_variables.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_bloc.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_event.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_state.dart';
import 'package:ayinza_commons/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class WalkingAnimation extends StatelessWidget {
  const WalkingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
      animationBloc.add(StartAnimation());
    return BlocBuilder<AnimationBloc, AnimationState>(
      builder: (context, state) {
        return Center(
          child: state is AnimationPlaying
              ? SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      verticalSpaceSmall,
                      Lottie.asset(
                        'assets/animations/walking.json',
                        width: 200, 
                        height: 200, 
                      ),
                     
                    ],
                  ),
                )
              : const Text("Animation Failed To Load"),
        );
      },
    );
  }
}