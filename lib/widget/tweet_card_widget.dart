import 'package:flutter/material.dart';
import 'package:twitter_ui/constants/app_constants.dart';

class TweetCardWidget extends StatelessWidget {
  const TweetCardWidget({
    super.key,
    this.accountName,
    this.date,
    this.tweetText,
  });

  final String? accountName;
  final String? date;
  final String? tweetText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.account_circle,
                size: AppConstants.profileIconSize,
              ),
              const SizedBox(width: AppConstants.spacingLarge),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          accountName ?? AppConstants.defaultAccountName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: AppConstants.spacingMedium),
                        Text(
                          date ?? AppConstants.defaultDate,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppConstants.spacingSmall),
                    Text(
                      tweetText ?? AppConstants.defaultTweetText,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppConstants.spacingMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.repeat),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
