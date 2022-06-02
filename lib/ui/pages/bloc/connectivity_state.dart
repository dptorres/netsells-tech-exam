part of 'connectivity_bloc.dart';

enum ConnectivityStatus {
  loading,
  online,
  offline,
}

extension ConnectivityStatusX on ConnectivityStatus {
  bool get isLoading => this == ConnectivityStatus.loading;
  bool get isOnline => this == ConnectivityStatus.online;
  bool get isOffline => this == ConnectivityStatus.offline;
}

class ConnectivityState extends Equatable {
  const ConnectivityState({
    this.status = ConnectivityStatus.loading,
  });

  final ConnectivityStatus status;

  @override
  List<Object?> get props => [status];

  ConnectivityState copyWith({
    ConnectivityStatus? status,
  }) {
    return ConnectivityState(
      status: status ?? this.status,
    );
  }

}
