import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'fetch_api.dart';
import 'infra_releases/current_release.dart';
import 'infra_releases/infra_releases.dart';
import 'infra_releases/release.dart';
import 'widgets/release_item.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Releases',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue[100],
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue[100],
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static const pageSize = 10;
  int pageNumber = 0;
  String platform = 'macos';
  late Future<InfraReleases> infraReleases;

  @override
  void initState() {
    super.initState();
    infraReleases = fetchReleases(platform);
  }

  Future<void> refresh() async {
    setState(() {
      infraReleases = fetchReleases(platform);
    });
  }

  Future<void> loadNextPage() async {
    setState(() {
      pageNumber++;
    });
  }

  Future<void> launchSourcePage() async {
    const String url = gitHubSourceUrl;
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> aboutDialog() async {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('About'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Flutter Releases is a app that displays the latest Flutter releases for macOS, Windows and Linux.',
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Inspired by ',
                    style: TextStyle(color: textTheme.bodySmall!.color),
                    children: <TextSpan>[
                      TextSpan(
                        text: inspirationFooterText,
                        style: TextStyle(color: colorScheme.onSurfaceVariant),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launchUrl(Uri.parse(inspirationTwitterUrl));
                          },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'All rights belong to their respective owners.',
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: launchSourcePage,
              child: const Text('Source code'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ColoredBox(
      color: colorScheme.primaryContainer,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Scaffold(
            backgroundColor: colorScheme.primaryContainer,
            appBar: AppBar(
              backgroundColor: colorScheme.primaryContainer,
              shadowColor: colorScheme.shadow,
              centerTitle: true,
              scrolledUnderElevation: 0,
              title: const Text('Flutter Releases'),
              leading: IconButton(
                icon: const Icon(Icons.info_outline_rounded),
                onPressed: () async => aboutDialog(),
                style: IconButton.styleFrom(
                  foregroundColor: colorScheme.onPrimary,
                  backgroundColor: colorScheme.primary,
                  disabledBackgroundColor:
                      colorScheme.onSurface.withOpacity(0.12),
                  hoverColor: colorScheme.onPrimary.withOpacity(0.08),
                  focusColor: colorScheme.onPrimary.withOpacity(0.12),
                  highlightColor: colorScheme.onPrimary.withOpacity(0.12),
                ),
              ),
              actions: <Widget>[
                MenuBar(
                  children: [
                    SubmenuButton(
                      menuChildren: [
                        MenuItemButton(
                          onPressed: () async {
                            setState(() {
                              platform = 'macos';
                            });
                            await refresh();
                          },
                          trailingIcon: platform == 'macos'
                              ? const Icon(Icons.check)
                              : null,
                          child: const Text('macOS'),
                        ),
                        MenuItemButton(
                          onPressed: () async {
                            setState(() {
                              platform = 'windows';
                            });
                            await refresh();
                          },
                          trailingIcon: platform == 'windows'
                              ? const Icon(Icons.check)
                              : null,
                          child: const Text('Windows'),
                        ),
                        MenuItemButton(
                          onPressed: () async {
                            setState(() {
                              platform = 'linux';
                            });
                            await refresh();
                          },
                          trailingIcon: platform == 'linux'
                              ? const Icon(Icons.check)
                              : null,
                          child: const Text('Linux'),
                        ),
                      ],
                      child: const Text('Platform'),
                    ),
                  ],
                ),
              ],
            ),
            body: FutureBuilder(
              future: infraReleases,
              builder: (BuildContext context,
                  AsyncSnapshot<InfraReleases> snapshot) {
                if (snapshot.hasData) {
                  CurrentRelease? currentRelease =
                      snapshot.data!.currentRelease;
                  List<Release>? releases = snapshot.data!.releases
                      ?.take(pageSize * (pageNumber + 1))
                      .toList();

                  return ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: releases?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return ReleaseItem(
                        release: releases![index],
                        currentRelease: currentRelease!,
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                loadNextPage();
              },
              child: const Icon(Icons.arrow_downward_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
