library scaling_button_widget;

import 'package:flutter/material.dart';


/// The `ScalingButton` widget creates a button that scales down slightly when
/// pressed and returns to its original size when released.
class ScalingButton extends StatefulWidget {
  /// The widget to be displayed as the button.
  final Widget child;

  /// The callback function to be invoked when the button is tapped.
  final VoidCallback onTap;

  /// Creates a scaling button widget.
  ///
  /// The [child] parameter is required and specifies the widget to be displayed as the button.
  ///
  /// The [onTap] parameter is required and specifies the callback function to be invoked when the button is tapped.
  const ScalingButton({Key? key, required this.onTap, required this.child}) : super(key: key);

  @override
  State<ScalingButton> createState() => _ScalingButtonState();
}

class _ScalingButtonState extends State<ScalingButton> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _animationController.forward();
      },
      onTapUp: (_) {
        _animationController.reverse();
        widget.onTap();
      },
      onTapCancel: () {
        _animationController.reverse();
      },
      child:
          ScaleTransition(scale: Tween<double>(begin: 1, end: 0.9).animate(_animationController), child: widget.child),
    );
  }
}
