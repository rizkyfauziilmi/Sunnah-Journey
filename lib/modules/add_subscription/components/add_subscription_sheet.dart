import 'package:flutter/material.dart';
import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:flutter_counter/data/services/sunnah_service.dart';
import 'package:flutter_counter/modules/add_subscription/components/add_subscription_not_found.dart';
import 'package:flutter_counter/shared/widgets/loading_animation.dart';
import 'package:flutter_counter/shared/widgets/toast_container.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:expandable_text/expandable_text.dart';

class AddSubscriptionSheet extends StatefulWidget {
  const AddSubscriptionSheet({
    super.key,
    required this.category,
  });

  final SunnahCategory category;

  @override
  State<AddSubscriptionSheet> createState() => _AddSubscriptionSheetState();
}

class _AddSubscriptionSheetState extends State<AddSubscriptionSheet> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 0.75,
      minChildSize: 0.25,
      expand: false,
      snap: true,
      builder: (context, scrollController) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<List<Sunnah>>(
            stream: context.read<SunnahService>().listenSunnahsByCategory(
                  category: widget.category,
                  screenName: '${widget.category.name} AddSubscriptionSheet',
                ),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return LoadingAnimation(
                  width: 150,
                  height: 150,
                  fit: BoxFit.fill,
                );
              }

              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              final updatedSunnahs = snapshot.data;
              final theme = Theme.of(context);

              if (updatedSunnahs!.isNotEmpty) {
                return ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  controller: scrollController,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemCount: updatedSunnahs.length,
                  itemBuilder: (context, index) {
                    final sunnah = updatedSunnahs[index];
                    final isSubscribed = sunnah.subscription != null;

                    return ListTile(
                      tileColor: theme.colorScheme.surfaceContainer,
                      contentPadding: const EdgeInsets.all(8),
                      dense: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      leading: Icon(
                        isSubscribed
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: isSubscribed ? theme.colorScheme.primary : null,
                      ),
                      title: Text(sunnah.title),
                      subtitle: ExpandableText(
                        sunnah.reference,
                        expandText: 'show reference',
                        collapseText: 'hide reference',
                        maxLines: 2,
                        linkColor: theme.colorScheme.primary,
                      ),
                      trailing: IconButton(
                        onPressed: () async {
                          // Fungsi untuk menampilkan dialog konfirmasi
                          Future<void> showConfirmationDialog() async {
                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Unsubscribe Sunnah'),
                                  content: const Text(
                                      'Are you sure you want to unsubscribe from this Sunnah? this will remove all your progress and history.'),
                                  actions: [
                                    FilledButton.icon(
                                      onPressed: () {
                                        Navigator.pop(
                                            context); // Tutup dialog tanpa aksi
                                      },
                                      icon: Icon(Icons.close),
                                      label: Text('Cancel'),
                                    ),
                                    FilledButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                          theme.colorScheme.error,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context); // Tutup dialog

                                        context
                                            .read<SunnahService>()
                                            .toggleSubscription(sunnah.id)
                                            .then((response) {
                                          showToast(
                                            response: response,
                                            fToast: fToast,
                                            onClose: () =>
                                                fToast.removeCustomToast(),
                                          );
                                        });
                                      },
                                      child: Text('Unsubscribe'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }

                          // Logika utama
                          if (isSubscribed) {
                            await showConfirmationDialog();
                          } else {
                            context
                                .read<SunnahService>()
                                .toggleSubscription(sunnah.id)
                                .then((response) {
                              showToast(
                                response: response,
                                fToast: fToast,
                                onClose: () => fToast.removeCustomToast(),
                              );
                            });
                          }
                        },
                        icon: Icon(
                          isSubscribed ? Icons.remove : Icons.add,
                        ),
                      ),
                    );
                  },
                );
              } else {
                return AddSubscriptionNotFound();
              }
            },
          ),
        );
      },
    );
  }
}
