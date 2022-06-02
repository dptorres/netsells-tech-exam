class ErrorGettingRedditPosts implements Exception {
  ErrorGettingRedditPosts(String error);
}

class ErrorEmptyResponse implements Exception {}