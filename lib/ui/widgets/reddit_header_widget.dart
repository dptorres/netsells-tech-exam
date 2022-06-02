import 'package:flutter/material.dart';
import '../../constants/constants_styles.dart';

class RedditHeaderWidget extends StatelessWidget {
  const RedditHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 35.0),
        const CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
            'https://b.thumbs.redditmedia.com/X2q6YuAJK0WWktTZcp-1D-4HnxOQ8oH1DqJdrLQtS8s.png',
          ),
        ),
        const SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'FlutterDev',
              style: headerTextStyle,
            ),
            SizedBox(height: 8.0),
            Text(
              'r/FlutterDev',
              style: subheaderTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}