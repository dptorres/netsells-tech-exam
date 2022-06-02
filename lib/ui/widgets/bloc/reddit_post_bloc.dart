import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repository/models/reddit_post.dart';
import '../../../repository/reddit_repository.dart';
import 'package:equatable/equatable.dart';

part 'reddit_post_event.dart';
part 'reddit_post_state.dart';

class RedditPostBloc extends Bloc<RedditPostEvent, RedditPostState> {
  RedditPostBloc({
    required this.redditRepository,
  }) : super(const RedditPostState()) {
    on<GetRedditPosts>(_mapGetRedditPostsEventToState);
  }

  final RedditRepository redditRepository;

  void _mapGetRedditPostsEventToState(
      GetRedditPosts event, Emitter<RedditPostState> emit) async {
    try {
      emit(state.copyWith(status: RedditPostStatus.loading));
      final redditPosts = await redditRepository.getRedditPosts();
      emit(
        state.copyWith(
          status: RedditPostStatus.success,
          redditPosts: redditPosts,
        ),
      );
    } catch (error) {
      emit(state.copyWith(status: RedditPostStatus.error));
    }
  }
}
