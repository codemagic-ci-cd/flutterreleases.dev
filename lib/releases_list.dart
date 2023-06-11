import 'package:flutter/material.dart';
import 'package:flutter_releases/flutter_infra_releases/current_release.dart';
import 'package:intl/intl.dart';

import 'flutter_infra_releases/release.dart';

const double layoutBreakWidth = 768.0;

class ReleasesList extends StatefulWidget {
  const ReleasesList({
    super.key,
    required this.currentRelease,
    required this.releases,
  });

  final CurrentRelease currentRelease;
  final List<Release> releases;

  @override
  State<ReleasesList> createState() => _ReleasesListState();
}

class _ReleasesListState extends State<ReleasesList> {
  final ScrollController _scrollController = ScrollController();
  int _currentCount = 10;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _currentCount += 5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final ColorScheme colorScheme = theme.colorScheme;
    const double itemHeight = 70.0;

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(8.0),
      itemCount: _currentCount,
      itemBuilder: (context, index) {
        final Release release = widget.releases[index];

        String? labelText;
        Color? labelColor;

        switch (release.channel) {
          case 'stable':
            if (release.hash == widget.currentRelease.stable) {
              labelText = 'Latest Stable';
              labelColor = colorScheme.secondary;
            }
            break;
          case 'beta':
            if (release.hash == widget.currentRelease.beta) {
              labelText = 'Latest Beta';
              labelColor = colorScheme.primary;
            }
            break;
          default:
            labelText = null;
        }

        return Stack(
          children: <Widget>[
            Positioned(
              child: Card(
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        DateFormat.yMMMd().format(release.releaseDate!),
                        style: textTheme.labelLarge!.copyWith(
                          color: colorScheme.primary,
                        ),
                      ),
                      LayoutBuilder(
                          builder: (BuildContext context, constraints) {
                        final double width = constraints.maxWidth;
                        final bool wideLayout = width >= layoutBreakWidth;

                        if (wideLayout) {
                          return Row(
                            children: <Widget>[
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/flutter.png',
                                fit: BoxFit.contain,
                                height: itemHeight,
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    '${release.version}',
                                    textAlign: TextAlign.center,
                                    style: textTheme.headlineMedium!.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  subtitle: Text(
                                    '${release.channel}',
                                    textAlign: TextAlign.center,
                                    style: textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: itemHeight,
                                child: VerticalDivider(
                                  color: colorScheme.primary,
                                  width: 10.0,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/dart.png',
                                fit: BoxFit.contain,
                                height: itemHeight,
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    '${release.dartSdkVersion}',
                                    textAlign: TextAlign.center,
                                    style: textTheme.headlineMedium!.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  subtitle: Text(
                                    '${release.dartSdkArch}',
                                    textAlign: TextAlign.center,
                                    style: textTheme.headlineSmall,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }

                        return Column(
                          children: <Widget>[
                            Row(
                              children: [
                                const SizedBox(width: 8),
                                Image.asset(
                                  'assets/flutter.png',
                                  fit: BoxFit.contain,
                                  height: itemHeight,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      '${release.version}',
                                      textAlign: TextAlign.center,
                                      style: textTheme.headlineMedium!.copyWith(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '${release.channel}',
                                      textAlign: TextAlign.center,
                                      style: textTheme.headlineSmall,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dart.png',
                                  fit: BoxFit.contain,
                                  height: itemHeight,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      '${release.dartSdkVersion}',
                                      textAlign: TextAlign.center,
                                      style: textTheme.headlineMedium!.copyWith(
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '${release.dartSdkArch}',
                                      textAlign: TextAlign.center,
                                      style: textTheme.headlineSmall,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 2.0,
              right: 0.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: labelColor,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    labelText ?? '',
                    style: textTheme.labelSmall!.copyWith(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
