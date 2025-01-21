import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/data/services/setting_service.dart';
import 'package:provider/provider.dart';

class ColorSchemesSelector extends StatelessWidget {
  const ColorSchemesSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final setting = context.watch<SettingService>().setting;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: FlexColor.schemes.length,
          itemBuilder: (context, index) {
            final scheme = FlexColor.schemes.keys.elementAt(index);
            final schemeData = FlexColor.schemes.values.elementAt(index);
            final isSelected = scheme == setting?.colorScheme;
            final currentThemeMode = setting?.themeMode ?? ThemeMode.system;

            // Gunakan Builder untuk memastikan context terbaru
            return Builder(
              builder: (innerContext) {
                return InkWell(
                  onTap: () {
                    context.read<SettingService>().updateColorScheme(scheme);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Theme.of(innerContext).colorScheme.tertiary
                          : Theme.of(innerContext).colorScheme.surface,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: currentThemeMode == ThemeMode.light
                                    ? schemeData.light.primary
                                    : schemeData.dark.primary,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: currentThemeMode == ThemeMode.light
                                    ? schemeData.light.secondary
                                    : schemeData.dark.secondary,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: currentThemeMode == ThemeMode.light
                                    ? schemeData.light.primaryContainer
                                    : schemeData.dark.primaryContainer,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: currentThemeMode == ThemeMode.light
                                    ? schemeData.light.secondaryContainer
                                    : schemeData.dark.secondaryContainer,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          scheme.name,
                          style: Theme.of(innerContext)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: isSelected
                                    ? Theme.of(innerContext)
                                        .colorScheme
                                        .onPrimary
                                    : Theme.of(innerContext)
                                        .colorScheme
                                        .onSurface,
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
