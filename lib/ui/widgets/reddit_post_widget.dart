import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netsells_tech_exam/ui/widgets/reddit_post_success_widget.dart';

import 'bloc/reddit_post_bloc.dart';
import 'error_post_widget.dart';

class RedditPostWidget extends StatelessWidget {
  const RedditPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RedditPostBloc, RedditPostState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? RedditPostSuccessWidget(
                redditPosts: state.redditPosts,
              )
            : state.status.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.status.isError
                  ? const ErrorPostWidget()
                  : const SizedBox();
      },
    );
  }
}