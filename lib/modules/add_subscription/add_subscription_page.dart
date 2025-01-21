import 'package:flutter/material.dart';
import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:flutter_counter/modules/add_subscription/components/card_category.dart';

class AddSubscriptionPage extends StatefulWidget {
  const AddSubscriptionPage({super.key});

  @override
  State<AddSubscriptionPage> createState() => _AddSubscriptionPageState();
}

class _AddSubscriptionPageState extends State<AddSubscriptionPage> {
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
