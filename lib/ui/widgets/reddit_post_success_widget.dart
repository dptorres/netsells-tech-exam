import 'package:flutter/material.dart';
import 'package:netsells_tech_exam/ui/widgets/reddit_post_item.dart';

import '../../repository/models/reddit_post.dart';

class RedditPostSuccessWidget extends StatelessWidget {
  const RedditPostSuccessWidget({
    Key? key,
    required this.redditPosts,
  }) : super(key: key);

  final List<RedditPost> redditPosts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
      ),
      itemBuilder: (context, index) {
        return RedditPostItem(
          redditPost: redditPosts[index],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(
        height:15.0,
      ),
      itemCount: redditPosts.length,
    );
  }
}
