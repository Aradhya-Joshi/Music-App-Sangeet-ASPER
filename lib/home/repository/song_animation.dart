import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SongAnimation extends StateNotifier<AnimationController?> {
  AnimationController? _animationController;
  SongAnimation() : super(null);

  initializeController(TickerProviderStateMixin ticker) {
    _animationController = AnimationController(
        vsync: ticker, duration: const Duration(milliseconds: 500));
    state = _animationController;
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
