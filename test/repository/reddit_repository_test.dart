import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:netsells_tech_exam/repository/models/reddit_post.dart';
import 'package:netsells_tech_exam/repository/reddit_repository.dart';
import 'package:netsells_tech_exam/repository/service/reddit_service.dart';

class MockService extends Mock implements RedditService {}

void main() {
  group('Game Repository', () {
    late RedditService redditService;
    late RedditRepository redditRepository;

    setUp(() {
      redditService = MockService();
      redditRepository = RedditRepository(
        service: redditService,
      );
    });

    test('instantiate RedditRepository', () {
      expect(
        redditRepository,
        isNotNull,
      );
    });

    test('call get subreddit post', () async {
      when(
            () => redditService.getRedditPosts(),
      ).thenAnswer(
            (_) => Future.value(
          <RedditPost>[],
        ),
      );
      await redditService.getRedditPosts();
      verify(
            () => redditService.getRedditPosts(),
      ).called(1);
    });

  });
}
