import 'package:flutter/material.dart';

import '../../constants/constants_styles.dart';

class ErrorPostWidget extends StatelessWidget {
  const ErrorPostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Something went wrong',
        style: errorTextStyle,
      ),
    );
  }
}
