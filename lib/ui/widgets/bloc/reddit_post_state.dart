part of 'reddit_post_bloc.dart';

enum RedditPostStatus {
  initial,
  success,
  error,
  loading
}

extension RedditPostStatusX on RedditPostStatus {
  bool get isInitial => this == RedditPostStatus.initial;
  bool get isSuccess => this == RedditPostStatus.success;
  bool get isError => this == RedditPostStatus.error;
  bool get isLoading => this == RedditPostStatus.loading;
}

class RedditPostState extends Equatable {
  const RedditPostState({
    this.status = RedditPostStatus.initial,
    List<RedditPost>? posts,
  }) : redditPosts = posts ?? const [];

  final List<RedditPost> redditPosts;
  final RedditPostStatus status;

  @override
  List<Object?> get props => [status, redditPosts];

  RedditPostState copyWith({
    List<RedditPost>? redditPosts,
    RedditPostStatus? status,
  }) {
    return RedditPostState(
      posts: redditPosts ?? this.redditPosts,
      status: status ?? this.status,
    );
  }
}
