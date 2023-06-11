import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_releases/fetch_api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_navigation_bar/tab_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'releases_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            scrolledUnderElevation: 0.0,
            title: Text(
              'Flutter Releases',
              style: GoogleFonts.lato().copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            leading: IconButton.outlined(
              icon: const Icon(FontAwesomeIcons.info),
              onPressed: () async {
                final ColorScheme colorScheme = Theme.of(context).colorScheme;

                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      actionsAlignment: MainAxisAlignment.center,
                      title: const Text('About'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Flutter Releases is an app that displays the latest Flutter releases for macOS, Windows and Linux.',
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Inspired by: ',
                                style: TextStyle(
                                  color: colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: inspirationText,
                                    style:
                                        TextStyle(color: colorScheme.primary),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        if (!await launchUrl(
                                            Uri.parse(inspirationTwitter))) {
                                          throw Exception(
                                              'Could not launch url');
                                        }
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
                      ],
                    );
                  },
                );
              },
            ),
            actions: <Widget>[
              IconButton.filledTonal(
                icon: const Icon(FontAwesomeIcons.github),
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(gitHubSourceUrl))) {
                    throw Exception('Could not launch url');
                  }
                },
              ),
              const SizedBox(width: 10.0),
            ],
            bottom: TabNavigationBar(
              tabs: const <Widget>[
                TabDestination(
                  icon: Icon(FontAwesomeIcons.apple),
                  label: 'macOS',
                ),
                TabDestination(
                  icon: Icon(FontAwesomeIcons.windows),
                  label: 'Windows',
                ),
                TabDestination(
                  icon: Icon(FontAwesomeIcons.linux),
                  label: 'Linux',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200.0),
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: FutureBuilder(
                      future: fetchReleases('macos'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData &&
                            snapshot.data!.currentRelease != null &&
                            snapshot.data!.releases!.isNotEmpty) {
                          return ReleasesList(
                            currentRelease: snapshot.data!.currentRelease!,
                            releases: snapshot.data!.releases!,
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200.0),
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: FutureBuilder(
                      future: fetchReleases('windows'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData &&
                            snapshot.data!.currentRelease != null &&
                            snapshot.data!.releases!.isNotEmpty) {
                          return ReleasesList(
                            currentRelease: snapshot.data!.currentRelease!,
                            releases: snapshot.data!.releases!,
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200.0),
                  child: Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: FutureBuilder(
                      future: fetchReleases('linux'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData &&
                            snapshot.data!.currentRelease != null &&
                            snapshot.data!.releases!.isNotEmpty) {
                          return ReleasesList(
                            currentRelease: snapshot.data!.currentRelease!,
                            releases: snapshot.data!.releases!,
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
