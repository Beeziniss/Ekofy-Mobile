import 'package:flutter/material.dart';

/// Simple shimmer effect for skeleton placeholders.
class SimpleShimmer extends StatefulWidget {
  final Widget child;
  const SimpleShimmer({super.key, required this.child});

  @override
  State<SimpleShimmer> createState() => _SimpleShimmerState();
}

class _SimpleShimmerState extends State<SimpleShimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))
      ..repeat();
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _c,
      builder: (_, __) {
        return ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment(-1 - 2 * _c.value, -1),
              end: Alignment(1 - 2 * _c.value, 1),
              colors: const [
                Color(0xFF15151B),
                Color(0xFF1E1E26),
                Color(0xFF15151B),
              ],
              stops: const [0.3, 0.5, 0.7],
            ).createShader(rect);
          },
          blendMode: BlendMode.srcATop,
          child: widget.child,
        );
      },
    );
  }
}
