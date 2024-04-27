import 'package:flutter/material.dart';

class OverlayNotification extends StatefulWidget {
  const OverlayNotification({
    super.key,
    required this.notificationWidget,
    required this.animationCompleteCallback,
    required this.duration,
  });

  final Widget notificationWidget;
  final VoidCallback animationCompleteCallback;
  final Duration duration;

  @override
  State<OverlayNotification> createState() => _OverlayNotificationState();
}

class _OverlayNotificationState extends State<OverlayNotification>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  Future<void> startAnimation() async {
    await _controller.forward();

    await Future<void>.delayed(
        Duration(milliseconds: widget.duration.inMilliseconds - 1000));

    await _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PositionedTransition(
      rect: RelativeRectTween(
        begin: const RelativeRect.fromLTRB(0, -100, 16, 16),
        end: const RelativeRect.fromLTRB(0, kToolbarHeight + 10, 0, 0),
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Curves.bounceOut,
          reverseCurve: Curves.linear,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Material(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 16),
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(child: widget.notificationWidget),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
