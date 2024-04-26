import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_event.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_state.dart';

class OverlayBloc extends Bloc<OverlayEvent, OverlayBlocState> {
  OverlayBloc() : super(OverlayInitialState()) {
    on<ShowNotificationEvent>(_showNotification);
  }

  Future<void> _showNotification(ShowNotificationEvent event, Emitter<OverlayBlocState> emit) async {
    emit(ShowNotificationState(
      content: event.content,
    ));
  }
}
