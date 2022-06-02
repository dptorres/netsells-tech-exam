import 'package:flutter/material.dart';
import 'package:netsells_tech_exam/ui/pages/home_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: HomeLayout()
        ),
      );
  }
}