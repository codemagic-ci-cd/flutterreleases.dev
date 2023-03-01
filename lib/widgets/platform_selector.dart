import 'package:flutter/material.dart';

enum Platform {
  macos,
  windows,
  linux,
}

class PlatformSelector extends StatefulWidget {
  const PlatformSelector({super.key, required this.onChanged});

  final ValueChanged<String> onChanged;

  @override
  State<PlatformSelector> createState() => _PlatformSelectorState();
}

class _PlatformSelectorState extends State<PlatformSelector> {
  Platform selected = Platform.macos;
  final Map<Platform, String> platformIcon = {
    Platform.macos: 'images/apple.png',
    Platform.windows: 'images/windows.png',
    Platform.linux: 'images/linux.png'
  };

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Platform>(
      initialValue: selected,
      icon: Image.asset(platformIcon[selected]!, height: 34.0, width: 34.0),
      // iconSize: 34.0,
      onSelected: (Platform value) {
        setState(() {
          selected = value;
        });
        widget.onChanged.call(value.name);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Platform>>[
        const PopupMenuItem<Platform>(
          value: Platform.macos,
          child: Text('macOS'),
        ),
        const PopupMenuItem<Platform>(
          value: Platform.windows,
          child: Text('Windows'),
        ),
        const PopupMenuItem<Platform>(
          value: Platform.linux,
          child: Text('Linux'),
        ),
      ],
    );
  }
}
