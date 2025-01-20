import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/shared/constants/quotes.dart';

class DailyQuote extends StatelessWidget {
  final random = Random();
  late final Map<String, String> quote = quotes[random.nextInt(quotes.length)];

  final images = [
    "https://img.freepik.com/premium-photo/india-mosque-kuching-sarawak-floating-mosque-river-kuching-sarawak-malaysia_1121685-102.jpg",
    "https://img.freepik.com/premium-photo/masjid-tengku-tengah-zaharah_1048944-19351957.jpg",
    "https://img.freepik.com/premium-photo/illuminated-masjid-songkhla-against-sky-sunset_1048944-28757726.jpg",
    "https://img.freepik.com/premium-photo/silhouette-big-mosque-with-high-minaret_9083-2721.jpg",
    "https://img.freepik.com/premium-photo/mosque-with-multiple-domes-minaret_932865-1021.jpg"
  ];

  String get imageUrl => images[random.nextInt(images.length)];

  DailyQuote({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            alignment: Alignment.center,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          // Overlay with black color and opacity
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withAlpha(150),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quote['quote']!,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
                Text(
                  "- ${quote['reference']!}",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white70,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
