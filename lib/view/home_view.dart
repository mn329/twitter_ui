import 'package:flutter/material.dart';
import 'package:twitter_ui/constants/app_constants.dart';
import 'package:twitter_ui/data/sample_tweets.dart';
import 'package:twitter_ui/widget/tweet_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tweets = SampleTweets.tweets;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.appBarHorizontalPadding,
          ),
          child: const Icon(
            Icons.account_circle,
            size: AppConstants.appBarIconSize,
          ),
        ),
        title: const Text(
          AppConstants.appTitle,
          style: TextStyle(
            fontSize: AppConstants.appBarTitleFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
          final tweet = tweets[index];
          return TweetCardWidget(
            accountName: tweet.accountName,
            date: tweet.date,
            tweetText: tweet.tweetText,
          );
        },
      ),
    );
  }
}
