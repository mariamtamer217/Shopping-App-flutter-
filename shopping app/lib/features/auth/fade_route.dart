import 'package:flutter/material.dart';

class FadeRoute<T> extends PageRouteBuilder<T> {
  FadeRoute({required Widget page})
      : super(
          pageBuilder: (_, __, ___) => page,
          transitionsBuilder: (_, anim, __, child) =>
              FadeTransition(opacity: anim, child: child),
          transitionDuration: const Duration(milliseconds: 350),
        );
}
