import 'package:ayinza_commons/bloc/page_event.dart';
import 'package:ayinza_commons/bloc/page_state.dart';

// class AnimationEvent extends PageEvent{}
// class StartAnimation extends AnimationEvent {}
// class StopAnimation extends AnimationEvent {}
abstract class AnimationEvent extends PageEvent {}

class StartAnimation extends AnimationEvent {}

class StopAnimation extends AnimationEvent {}

class NextAnimation extends AnimationEvent {}

class ResetAnimationCycle extends AnimationEvent {}