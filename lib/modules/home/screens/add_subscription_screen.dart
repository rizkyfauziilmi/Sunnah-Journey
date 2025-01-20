import 'package:flutter/material.dart';
import 'package:flutter_counter/database/models/sunnah.dart';
import 'package:flutter_counter/database/services/sunnah_service.dart';
import 'package:flutter_counter/modules/home/components/card_category.dart';

class AddSubscriptionScreen extends StatefulWidget {
  const AddSubscriptionScreen({super.key});

  @override
  State<AddSubscriptionScreen> createState() => _AddSubscriptionScreenState();
}

class _AddSubscriptionScreenState extends State<AddSubscriptionScreen> {
  final sunnahService = SunnahService();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: SunnahCategory.values.length,
        itemBuilder: (context, index) {
          final category = SunnahCategory.values[index];

          return CardCategory(
            category: category,
          );
        },
      ),
    );
  }
}
