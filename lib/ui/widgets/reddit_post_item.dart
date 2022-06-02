import 'package:flutter/material.dart';

import '../../constants/constants_styles.dart';
import '../../repository/models/reddit_post.dart';

class RedditPostItem extends StatelessWidget {
  const RedditPostItem({
    Key? key,
    required this.redditPost,
  }) : super(key: key);

  final RedditPost redditPost;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey.withOpacity(.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: Text(
              redditPost.title ?? '',
              style: cardHeaderTextStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: Text(
              'by: ${redditPost.author ?? ''}',
              style: cardSubheaderTextStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: Text(
              'tag: ${redditPost.linkFlairText ?? ''}',
              style: cardSubheaderTextStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: Text(
              redditPost.selfText ?? '',
              style: cardSubheaderTextStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
