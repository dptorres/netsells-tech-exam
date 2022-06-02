import 'package:flutter/material.dart';

import '../widgets/reddit_header_widget.dart';
import '../widgets/reddit_post_widget.dart';

class HomeLayoutSuccess extends StatelessWidget {
  const HomeLayoutSuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            RedditHeaderWidget(),
            SizedBox(height: 10.0),
            RedditPostWidget(),
          ],
        ),
      ),
    );
  }
}