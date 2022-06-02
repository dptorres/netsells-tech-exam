import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'connectivity_state.dart';
part 'connectivity_event.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final InternetConnectionChecker? internetConnectionChecker;
  StreamSubscription? internetConnectionStreamSubscription;

  ConnectivityBloc({
    required this.internetConnectionChecker,
  }) : super(const ConnectivityState()) {
    on<OnConnectedEvent>((event, emit) => emit(state.copyWith(status: ConnectivityStatus.online)));
    on<OnDisconnectedEvent>((event, emit) => emit(state.copyWith(status: ConnectivityStatus.offline)));

    internetConnectionStreamSubscription = InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          add(OnConnectedEvent());
          break;
        case InternetConnectionStatus.disconnected:
          add(OnDisconnectedEvent());
          break;
      }
    });
  }

  @override
  Future<void> close() async {
    internetConnectionStreamSubscription!.cancel();
    return super.close();
  }
}
