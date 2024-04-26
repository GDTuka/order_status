import 'package:flutter/material.dart';

abstract class OverlayBlocState {}

class OverlayInitialState extends OverlayBlocState {}

class ShowNotificationState extends OverlayBlocState {
  ShowNotificationState({
    required this.content,
  });
  final Widget content;
}
