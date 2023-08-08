import 'package:flutter/material.dart';

enum ThemeModeOption { light, dark, system }

class MyThemeSelector extends StatefulWidget {
  final ValueChanged<ThemeModeOption> onThemeModeChanged;

  const MyThemeSelector({super.key, required this.onThemeModeChanged});

  @override
  MyThemeSelectorState createState() => MyThemeSelectorState();
}

class MyThemeSelectorState extends State<MyThemeSelector> {
  ThemeModeOption _selectedOption = ThemeModeOption.system;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<ThemeModeOption>(
      value: _selectedOption,
      items: const [
        DropdownMenuItem(
          value: ThemeModeOption.light,
          child: Text('Light'),
        ),
        DropdownMenuItem(
          value: ThemeModeOption.dark,
          child: Text('Dark'),
        ),
        DropdownMenuItem(
          value: ThemeModeOption.system,
          child: Text('Sync with System'),
        ),
      ],
      onChanged: (value) {
        setState(() {
          _selectedOption = value!;
          widget.onThemeModeChanged(_selectedOption);
        });
      },
    );
  }
}
