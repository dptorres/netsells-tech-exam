class RedditPost {
  RedditPost({
    this.title,
    this.author,
    this.linkFlairText,
    this.selfText,
  });

  final String? title;
  final String? author;
  final String? linkFlairText;
  final String? selfText;

  factory RedditPost.fromJson(Map<String, dynamic> json) {
    return RedditPost(
      title: json['title'] as String?,
      author: json['author'] as String?,
      linkFlairText: json['link_flair_text'] as String?,
      selfText: json['selftext'] as String?,
    );
  }
}
