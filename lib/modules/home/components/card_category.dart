import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/database/models/sunnah.dart';
import 'package:flutter_counter/modules/home/components/add_subscription_sheet.dart';

class CardCategory extends StatefulWidget {
  const CardCategory({super.key, required this.category});

  final SunnahCategory category;

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  final thumbnailMap = {
    SunnahCategory.worship:
        'https://img.freepik.com/premium-photo/rear-view-men-praying-mosque_1048944-6289524.jpg',
    SunnahCategory.dailylife:
        'https://img.freepik.com/premium-photo/couple-walking-garden-man-woman-walk-nature-trees-surrounded-by-plants-family-together-park-spring-time_866797-3276.jpg',
    SunnahCategory.dealings:
        'https://img.freepik.com/premium-photo/senior-woman-selling-food-market-stall_1048944-22707134.jpg',
    SunnahCategory.etiquette:
        'https://img.freepik.com/premium-photo/muslim-family-shake-kissing-hand-idul-fitri_8595-28901.jpg',
    SunnahCategory.family:
        'https://img.freepik.com/premium-photo/muslim-family-relaxing-home_53876-48817.jpg',
    SunnahCategory.health:
        'https://img.freepik.com/premium-photo/asian-muslim-senior-couple-exercising-together_8595-11481.jpg',
    SunnahCategory.social:
        'https://img.freepik.com/premium-photo/portrait-smiling-friends-sitting-restaurant_1048944-7224328.jpg',
  };

  void showAddSubscriptionSheet(SunnahCategory category) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      builder: (context) {
        return AddSubscriptionSheet(category: category);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showAddSubscriptionSheet(widget.category),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: thumbnailMap[widget.category]!,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              // center aligment image
              alignment: Alignment.center,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                  strokeWidth: 2.0,
                ),
              ),
              errorWidget: (context, url, error) => Center(
                child: Icon(Icons.error),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Theme.of(context)
                    .colorScheme
                    .surfaceContainerHighest
                    .withValues(alpha: 0.7),
                padding: const EdgeInsets.all(8),
                child: Text(
                  widget.category.toString().split('.').last,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
