import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../models/reddit_post.dart';
import '../models/result_error.dart';

class RedditService {
  RedditService({
    http.Client? httpClient,
    this.baseUrl = 'https://www.reddit.com/r/FlutterDev.json',
  }) : _httpClient = httpClient ?? http.Client();

  final String baseUrl;
  final Client _httpClient;

  Future<List<RedditPost>> getRedditPosts() async {
    final response = await _httpClient.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        return List<RedditPost>.from(
          json.decode(response.body)['data']['children'].map(
                (data) => RedditPost.fromJson(data['data']),
          ),
        );
      } else {
        throw ErrorEmptyResponse();
      }
    } else {
      throw ErrorGettingRedditPosts('Error getting reddit posts');
    }
  }
}