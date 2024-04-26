import 'package:flutter/material.dart';

abstract class OverlayEvent {}

class ShowNotificationEvent extends OverlayEvent {
  ShowNotificationEvent({
    required this.content,
  });
  Widget content;
}
