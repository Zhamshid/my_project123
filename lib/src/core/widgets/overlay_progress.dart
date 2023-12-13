import 'package:flutter/material.dart';
import 'package:my_project/src/core/widgets/custom_progress_indicator.dart';

class OverlayProgress extends StatelessWidget {
  const OverlayProgress({
    required this.inAsyncCall,
    required this.child,
    super.key,
    this.opacity = 0.3,
    this.color = Colors.grey,
    this.progressIndicator = const CustomProgressIndicator(),
    this.offset,
    this.dismissible = false,
  });
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Widget progressIndicator;
  final Offset? offset;
  final bool dismissible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!inAsyncCall) return child;

    Widget layOutProgressIndicator;
    layOutProgressIndicator = offset == null
        ? Center(child: progressIndicator)
        : Positioned(
            left: offset!.dx,
            top: offset!.dy,
            child: progressIndicator,
          );

    return Stack(
      children: [
        child,
        Opacity(
          opacity: opacity,
          child: ModalBarrier(dismissible: dismissible, color: color),
        ),
        layOutProgressIndicator,
      ],
    );
  }
}
