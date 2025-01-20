import 'package:flutter/material.dart';

class PreviewUserProfile extends StatelessWidget {
  const PreviewUserProfile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.bio,
  });

  final String imageUrl;
  final String name;
  final String bio;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            imageUrl,
          ),
        ),
        Column(
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              bio,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color:
                        Theme.of(context).colorScheme.onSurface.withAlpha(100),
                  ),
            ),
          ],
        ),
        FilledButton.icon(
          onPressed: () {},
          label: Text('Edit Profile'),
          icon: Icon(Icons.edit),
        )
      ],
    );
  }
}
