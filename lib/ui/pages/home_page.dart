import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netsells_tech_exam/ui/pages/home_layout.dart';

import '../../repository/reddit_repository.dart';
import '../../repository/service/reddit_service.dart';
import '../widgets/bloc/reddit_post_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => RedditRepository(service: RedditService()),
        child: BlocProvider<RedditPostBloc>(
          create: (context) => RedditPostBloc(
            redditRepository: context.read<RedditRepository>(),
          )..add(GetRedditPosts()),
          child: const SafeArea(
              child: HomeLayout()
          ),
        ),
      ),
    );
  }
}