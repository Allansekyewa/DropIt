import 'dart:ui';

import 'package:ayinza_commons/bloc/page_state.dart';

// class AnimationState extends PageState{ }
// class AnimationStopped extends AnimationState {}
// class AnimationPlaying extends AnimationState {}
abstract class AnimationState extends PageState {}
class AnimationInitial extends AnimationState {}

class AnimationStopped extends AnimationState {}

class AnimationPlaying extends AnimationState {
  final int currentIndex;
  final String currentAnimationPath;
  final String currentAnimationName;
  
  AnimationPlaying({
    required this.currentIndex,
    required this.currentAnimationPath,
    required this.currentAnimationName,
  });
}
class AnimationError extends AnimationState {
  final String message;
  AnimationError(this.message);
}

// Animation Data Model
class AnimationData {
  final String path;
  final String name;
  
  const AnimationData({
    required this.path,
    required this.name,
  });
}
class AnimationInProgress extends AnimationState {
  final double fadeValue;
  final Offset slideOffset;

  AnimationInProgress({
    required this.fadeValue,
    required this.slideOffset,
  });
}
class AnimationCompleted extends AnimationState {}