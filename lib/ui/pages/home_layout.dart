import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/constants_styles.dart';
import 'bloc/connectivity_bloc.dart';
import 'home_layout_success.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
        builder: (context, state) {
          return state.status.isOnline
              ? const HomeLayoutSuccess()
              : state.status.isOffline
                ? const Center(
                    child: Text(
                      'You are offline',
                      style: errorTextStyle,
                    ),
                  )
              : const SizedBox();
        }
    );
  }
}