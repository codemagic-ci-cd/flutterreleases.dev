import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../infra_releases/current_release.dart';
import '../infra_releases/release.dart';

class ReleaseItem extends StatelessWidget {
  const ReleaseItem({
    super.key,
    required this.release,
    required this.currentRelease,
  });

  final CurrentRelease currentRelease;
  final Release release;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    String? labelText;

    switch (release.channel) {
      case 'stable':
        if (release.hash == currentRelease.stable) {
          labelText = 'Latest Stable';
        }
        break;
      case 'beta':
        if (release.hash == currentRelease.beta) {
          labelText = 'Latest Beta';
        }
        break;
      default:
        labelText = null;
    }

    return Badge(
      alignment: AlignmentDirectional.topEnd,
      offset: const Offset(-60.0, 0.0),
      isLabelVisible: labelText != null,
      label: labelText != null ? Text(labelText) : null,
      child: Card(
        child: ListTileTheme(
          data: ListTileThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: ExpansionTile(
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Text(
              'Channel: ${release.channel}',
            ),
            subtitle: Text('Version: ${release.version}'
                '\nDart version: ${release.dartSdkVersion}'
                '\nDart SDK arch: ${release.dartSdkArch}'),
            trailing: Text(DateFormat.yMMMd().format(release.releaseDate!)),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Tooltip(
                      message: 'Tap to copy hash',
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'hash: ',
                            style: TextStyle(color: textTheme.bodySmall!.color),
                            children: <TextSpan>[
                              TextSpan(
                                text: release.hash,
                                style: TextStyle(
                                  color: colorScheme.primary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Clipboard.setData(
                                      ClipboardData(text: release.hash),
                                    );
                                  },
                              ),
                            ],
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'Tap to copy sha256',
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'sha256: ',
                            style: TextStyle(color: textTheme.bodySmall!.color),
                            children: <TextSpan>[
                              TextSpan(
                                text: release.sha256,
                                style: TextStyle(
                                  color: colorScheme.primary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Clipboard.setData(
                                      ClipboardData(text: release.sha256),
                                    );
                                  },
                              ),
                            ],
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Tooltip(
                      message: 'Tap to copy archive url',
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'archive: ',
                            style: TextStyle(color: textTheme.bodySmall!.color),
                            children: <TextSpan>[
                              TextSpan(
                                text: release.archive,
                                style: TextStyle(
                                  color: colorScheme.primary,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Clipboard.setData(
                                      ClipboardData(text: 'https://storage.googleapis.com/flutter_infra_release/releases/${release.archive}'),
                                    );
                                  },
                              ),
                            ],
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
