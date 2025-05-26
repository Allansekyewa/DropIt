
import 'dart:async';

import 'package:DropIT/res/animations/presentation/bloc/animation_event.dart';
import 'package:DropIT/res/animations/presentation/bloc/animation_state.dart';
import 'package:ayinza_commons/bloc/page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class AnimationBloc extends PageBloc<AnimationEvent, AnimationState> {
//   AnimationBloc() : super(AnimationStopped()) {
//     on<StartAnimation>((event, emit) {
//       emit(AnimationPlaying());
//     });

//     on<StopAnimation>((event, emit) {
//       emit(AnimationStopped());
//     });
//   }
// }
class AnimationBloc extends PageBloc<AnimationEvent, AnimationState> {
  Timer? _animationTimer;
  int _currentIndex = 0;
  
  final List<AnimationData> _animations = const [
    AnimationData(
      path: 'assets/animations/welcome.json',
      name: 'Walking',
    ),
    AnimationData(
      path: 'assets/animations/cycling.json',
      name: 'Cycling',
    ),
    AnimationData(
      path: 'assets/animations/welcome.json',
      name: 'Welcome',
    ),
  ];

  AnimationBloc() : super(AnimationStopped()) {
    on<StartAnimation>(_onStartAnimation);
    on<StopAnimation>(_onStopAnimation);
    on<NextAnimation>(_onNextAnimation);
    on<ResetAnimationCycle>(_onResetAnimationCycle);
  }

void _onStartAnimation(StartAnimation event, Emitter<AnimationState> emit) {
  _currentIndex = 0; // Reset to first animation
  _startTimer();
  emit(AnimationPlaying(
    currentIndex: _currentIndex,
    currentAnimationPath: _animations[_currentIndex].path,
    currentAnimationName: _animations[_currentIndex].name,
  ));
}

  void _onStopAnimation(StopAnimation event, Emitter<AnimationState> emit) {
    _animationTimer?.cancel();
    emit(AnimationStopped());
  }

// Inside AnimationBloc
void _onNextAnimation(NextAnimation event, Emitter<AnimationState> emit) {
  _currentIndex = (_currentIndex + 1) % _animations.length;
 //print("🔄 Switching to animation: ${_animations[_currentIndex].name}");// Debug
  emit(AnimationPlaying( // 🚀 New instance every time
    currentIndex: _currentIndex,
    currentAnimationPath: _animations[_currentIndex].path,
    currentAnimationName: _animations[_currentIndex].name,
  ));
}

  void _onResetAnimationCycle(ResetAnimationCycle event, Emitter<AnimationState> emit) {
    _currentIndex = 0;
    emit(AnimationPlaying(
      currentIndex: _currentIndex,
      currentAnimationPath: _animations[_currentIndex].path,
      currentAnimationName: _animations[_currentIndex].name,
    ));
  }

  void _startTimer() {
    _animationTimer?.cancel();
    _animationTimer = Timer.periodic(const Duration(seconds: 10), (timer) {
      add(NextAnimation());
    });
  }

  @override
  Future<void> close() {
    _animationTimer?.cancel();
    return super.close();
  }
}