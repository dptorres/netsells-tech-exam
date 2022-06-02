import 'models/reddit_post.dart';
import 'service/reddit_service.dart';

class RedditRepository {
  const RedditRepository({
    required this.service,
  });
  final RedditService service;

  Future<List<RedditPost>> getRedditPosts() async => service.getRedditPosts();

}